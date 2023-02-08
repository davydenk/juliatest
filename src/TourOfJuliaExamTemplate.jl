module TourOfJuliaExamTemplate

solutions = [233168, 4613732, 6857, 906609, 232792560, 25164150, 104743, 23514624000, 31875000, 142913828922]
export solutions

# Write your package code here.
for (n, sol) in enumerate(solutions)
    func = Symbol("problem_", n)
    @eval begin
        """
        This is the docstring for $($func), which solves the $($n) problem on [Project Euler](https://projecteuler.net)
        """
        function $func()
            $sol
        end
        
        export $func
    end
end

end
