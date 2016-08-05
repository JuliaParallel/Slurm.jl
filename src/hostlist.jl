export Hostlist

"""
    Hostlist(node_list)

Takes a slurm hostlist of form `"node[1-3,6]"` and provides an iterator
that gives the full hostnames `["node1", "node2", "node3", "node6"]`.

Note: You can only iterate through a hostlist once.

# Usage
```julia
hostlist = Hostname("node[1-3,6]")
for host in hostlist
  @show host
end
hostlist = Hostname("node[1-5,7,9-16]")
collect(hostlist)
```
"""
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
Base.start(hl :: Hostlist) = shift(hl)
Base.done(::Hostlist, state) = state == C_NULL
Base.next(hl:: Hostlist, state) = unsafe_string(state), shift(hl)
Base.eltype(::Hostlist) = String
Base.iteratorsize(::Type{Hostlist}) = Base.SizeUnknown()

