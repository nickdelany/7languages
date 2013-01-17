div := Number getSlot("/")
Number setSlot("/", method(i, if (i == 0, 0, self div(i))))
1/3 println
1/0 println
