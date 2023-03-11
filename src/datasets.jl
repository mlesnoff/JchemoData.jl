"""
    datasets()
Print the names of the datasets available in the package.

## Example
```julia
datasets()
```
"""
function datasets()
    path = joinpath(@__DIR__, "..", "data")
    z = readdir(path)
    n = length(z)
    m = mod(n, 4)
    if m > 0
        u = repeat([""], 4 - m)
        v = [z; u]
    else
        v = copy(z)
    end
    k = length(v)
    reshape(v, Int64(k / 4), 4)
end


