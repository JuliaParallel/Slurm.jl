module api

const libslurm = Libdl.find_library(["libslurm"])

include("api/slurm_common.jl")
include("api/slurm.jl")

end

