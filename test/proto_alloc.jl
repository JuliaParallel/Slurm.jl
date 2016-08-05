using Slurm
import Slurm: api
import Parameters: reconstruct

type Job
  desc :: api.job_desc_msg_t
  refs :: Dict{Symbol, Any}


  function Job(;kwargs...)
    fields = Dict{Symbol, Any}()
    refs = Dict{Symbol, Any}()
    for (key, value) in kwargs
      if key ∉ fieldnames(api.job_desc_msg_t)
        error("$key is not a valid parameter for a slurm job.")
      end

      if isa(value, String)
        refs[key] = value
        fields[key] = Base.unsafe_convert(Ptr{Cchar}, value)
      elseif !isbits(value)
        error("$key => $value is not a bitstype")
      else
        fields[key] = value
      end
    end
    r_desc = Ref{api.job_desc_msg_t}()
    api.slurm_init_job_desc_msg(r_desc)
    new(reconstruct(r_desc[], fields), refs)
  end
end

function Base.unsafe_convert(P::Type{Ptr{api.job_desc_msg_t}}, j :: Job)
  return convert(P, Base.data_pointer_from_objref(j))
end

willrun(j :: Job) = api.slurm_job_will_run(j) == 1
# slurm_job_will_run2

# slurm_allocate_resources
# slurm_confirm_allocation
# slurm_free_resource_allocation_response_msg

# slurm_allocation_lookup

# slurm_allocate_resources_and_run
# slurm_free_resource_allocation_and_run_response_msg

# slurm_submit_batch_job
# slurm_free_submit_response_response_msg
