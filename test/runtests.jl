using MyPkg0
using Test
using Random

@testset "MyPkg0.jl" begin
    @test isequal(sog([]), nothing)
    @test isequal(sog(['o']), Bool[1])
    @test isequal(sog(["one"]), Bool[1])
    Random.seed!(127)
    @test isequal(sog(rand(1:10, 20)), Bool[1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1])
end
