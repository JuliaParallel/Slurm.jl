module api

const libslurm = Libdl.find_library(["libslurm"])
# We need to dlopen libslurm with RTLD_GLOBAL to make sure that all dependencies are loaded correctly.
Libdl.dlopen(libslurm, Libdl.RTLD_GLOBAL)

typealias pid_t UInt32
typealias uid_t UInt32
typealias time_t Int

include("api/slurm_common.jl")
include("api/slurm.jl")

end

