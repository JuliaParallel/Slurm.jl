import Slurm: api

# show_flag may be ored
# SHOW_ALL
# SHOW_DETAIL
# SHOW_DETAIL2
# SHOW_MIXED

type JobTable
  jobs :: Ptr{api.job_info_msg_t}

  function Jobs(jobs :: Ptr{api.job_info_msg_t})
    jtable = new(r_jobs[])
    finalizer(jtable, delete)
    return jtable
  end
end

function delete(jt :: JobTable)
  if jt.jobs != C_NULL
    api.slurm_free_job_info_msg(jt.jobs)
    jt.jobs = C_NULL
  end
end

function JobTable(show_flag = api.SHOW_ALL)
  r_jobs = Ref{Ptr{api.job_info_msg_t}}()
  timestamp = round(Int, Dates.datetime2unix(now()))
  err = api.slurm_load_jobs(timestamp, r_jobs, show_flag)
  # TODO err

  JobTable(r_jobs[])
end

# slurm_load_job
# slurm_load_job_user
# slurm_load_job_yser

length(jt :: JobTable) = unsafe_load(jt.jobs).record_count
function getindex(jt :: JobTable, i)
  jobs = unsafe_load(jt.jobs).job_array
  unsafe_load(jobs, i)
end

typealias Job api.slurm_job_info_t

# slurm_get_rem_time
# slurm_get_end_time

# slurm_job_cpus_allocated_on_node
# slurm_job_cpus_allocated_on_node_id

# slurm_job_cpus_allocated_str_on_node
# slurm_job_cpus_allocated_str_on_node_id

function notify()
  slurm_notify_job
end

function pid2jobid(pid)
  slurm_pid2jobid
end

# slurm_complete_job
# slurm_kill_job
