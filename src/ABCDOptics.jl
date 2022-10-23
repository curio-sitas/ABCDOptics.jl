# Dependencies
using StaticArrays

module ABCDOptics

#Exports
export *, ==, FreeSpace, ThinLens, FlatMirror, FlatInterface, CurvedInterface, CurvedMirror, ThickLens

#Includes

include("OpticalElements.jl")
include("Beam.jl")
include("Cavity.jl")
include("PlotRecipes.jl")

end
