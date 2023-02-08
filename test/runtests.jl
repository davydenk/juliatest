using TourOfJuliaExamTemplate
using Test

@testset "TourOfJuliaExamTemplate.jl" begin
    for (n, sol) in enumerate(solutions)
        @test @eval $(Symbol("problem_", n))() == $sol
    end
end