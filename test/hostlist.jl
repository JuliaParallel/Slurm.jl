@testset "Hostlist" begin
  slurm_hostlist = "linux[1-3,6]"
  hostlist = Hostlist(slurm_hostlist)
  @test collect(hostlist) .== ["linux1", "linux2", "linux3", "linux6"]
end
