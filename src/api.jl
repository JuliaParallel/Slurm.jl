module api

const libslurm = Libdl.find_library(["libslurm"])

typealias pid_t UInt32
typealias uid_t UInt32
typealias time_t Int

include("api/slurm_common.jl")
include("api/slurm.jl")

end

