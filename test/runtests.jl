using ABCDOptics
using Test

@testset "ABCDOptics.jl" begin
    L = 10
    @test FreeSpace(L)*FreeSpace(L) == FreeSpace(2L)
    @test FreeSpace(L)*ThinLens(L)*FreeSpace(2L)*ThinLens(L)*FreeSpace(L) == -FlatMirror()
end
