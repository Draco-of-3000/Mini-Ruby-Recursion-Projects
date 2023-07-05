def iterative_fib(n)
    sequence = []
    a, b = 0, 1

    n.times do 
        sequence << a
        a, b = b, a + b
    end

    sequence
end

def recursive_fib(n)
    return [] if n <= 0
    return [0] if n <= 1
    return [0, 1] if n == 2

    sequence = recursive_fib(n-1)
    sequence << sequence[-1] + sequence[-2]

    sequence
end