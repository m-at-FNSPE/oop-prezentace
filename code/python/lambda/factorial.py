# Factorial section
def y_combinator(g):
    def wrapper(n):
        return g(n, wrapper)
    return wrapper

factorial = y_combinator(lambda n, x: n * x(n - 1) if n else 1)

if __name__ == '__main__':
    print(factorial(6))
