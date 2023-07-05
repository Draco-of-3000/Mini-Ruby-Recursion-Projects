def iterative_fib(n)
    sequence = []
    a, b = 0, 1

    n.times do 
        sequence << a
        a, b = b, a + b
    end

    sequence
end