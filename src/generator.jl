###
# This script generates julia bindings for different Vulkan versions

using Clang.wrap_c
using Clang.cindex

# Which variable contains the library later onr
header_library(x) = "libslurm"

slurm_headers = ["/usr/include/slurm/slurm.h"]


const wc = wrap_c.init(;
                        headers = slurm_headers,
                        output_file = "api/slurm.jl",
                        common_file = "api/slurm_common.jl",
                        header_library = header_library,
                        header_wrapped=(x,y)->(println(y);contains(y,"slurm"))
                        )

  # wrap_structs, immutable_structs
  wc.options = wrap_c.InternalOptions(true, true)
  run(wc)

