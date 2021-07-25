using MyPkg0
using Test

@testset "MyPkg0.jl" begin
    @test isequal(sog([]), nothing)
    @test isequal(sog(['o']), Bool[1])
    @test isequal(sog(["one"]), Bool[1])
    #Random.seed!(127)
    #@test isequal(sog(rand(1:10, 20)), Bool[1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1])
    @test isequal(sog([2, 1, 2, 4, 3, 5, 5, 8, 10, 10, 4, 3, 3, 6, 1, 10, 7, 5, 5, 6]), Bool[1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1])
    #What are in rand() should be [2, 1, 2, 4, 3, 5, 5, 8, 10, 10, 4, 3, 3, 6, 1, 10, 7, 5, 5, 6] under this certain seed.
end
