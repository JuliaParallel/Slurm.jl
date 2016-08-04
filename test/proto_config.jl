import Slurm: api

type Configuration
  version
  ctl_conf :: Ptr{api.slurm_ctl_conf_t}

  function Configuration()
    version = api.slurm_api_version()
    timestamp = round(Int, Dates.datetime2unix(now()))
    r_conf = Ref{Ptr{api.slurm_ctl_conf_t}}()
    err = api.slurm_load_ctl_conf(timestamp, r_conf)
    # TODO: handle err

    conf = new(version, r_conf[])
    finalizer(conf, delete)
    return conf
  end
end

function delete(c :: Configuration)
  if c.ctl_conf != C_NULL
    api.slurm_free_ctl_conf(c.ctl_conf)
    c.ctl_conf = C_NULL
  end
end

function get(c :: Configuration, field :: Symbol)
  if field ∉ fieldnames(api.slurm_ctl_conf_t)
    error("$field is not a property of Configuration")
  else
    val = getfield(unsafe_load(c.ctl_conf), field)
    if isa(val, Cstring)
      return unsafe_string(val)
    else
      return val
    end
  end
end

