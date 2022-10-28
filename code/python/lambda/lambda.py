# logic section
true = lambda x, y: x
false = lambda x, y: y
myNot = lambda x: x(true, false)
myAnd = lambda x, y: x(y(true, false), false)
myOr = lambda x, y: myNot(myAnd(myNot(x), myNot(y)))

it_rains = true
it_snows = false


# Factorial section
def y_combinator(g):
    def wrapper(n):
        return g(n, wrapper)
    return wrapper

factorial = y_combinator(lambda n, x: n * x(n - 1) if n else 1)

if __name__ == '__main__':
    print(myAnd(it_snows, it_rains)('It rains and snows!!!', "It doesn't snow or rain."))
    # print(factorial(5))
