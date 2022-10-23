# Dependencies
using StaticArrays
module ABCDOptics

#Exports
export *, ==, FreeSpace, ThinLens, FlatMirror, FlatInterface, CurvedInterface, CurvedMirror

#Icludes
include("OpticalElements.jl")

end
