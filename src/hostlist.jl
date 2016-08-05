type Hostlist
  hlist :: api.hostlist_t

  function Hostlist(node_list :: String)
    slurm_hl = api.slurm_hostlist_create(node_list)
    if slurm_hl == C_NULL
      error("Could not allocate memory for hostlist.")
    end
    hl = new(slurm_hl)
    finalizer(hl, delete)
    return hl
  end
end

function delete(hl :: Hostlist)
  api.slurm_hostlist_destroy(hl.hlist)
end

shift(hl :: Hostlist) = api.slurm_hostlist_shift(hl.hlist)
start(hl :: Hostlist) = shift(hl)
done(::Hostlist, state) = state == C_NULL
next(hl:: Hostlist, state) = unsafe_string(state), shift(hl)
