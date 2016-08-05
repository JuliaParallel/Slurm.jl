"""
    geterror()

Returns the last slurm error number and the error string.
"""
function geterror()
  err = api.slurm_get_errno()
  return err, unsafe_string(api.slurm_strerror(err))
end
