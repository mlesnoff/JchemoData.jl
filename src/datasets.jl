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
    readdir(path)
end


