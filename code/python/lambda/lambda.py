# logic section
true = lambda x, y: x
false = lambda x, y: y

myNot = lambda x: x(true, false)
myAnd = lambda x, y: x(y(true, false), false)
myOr = lambda x, y: myNot(myAnd(myNot(x), myNot(y)))

it_rains = true
it_snows = false

if __name__ == '__main__':
    print(myAnd(it_snows, it_rains)('It rains and snows!!!', "It doesn't snow or rain."))
