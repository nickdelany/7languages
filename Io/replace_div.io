div := Number getSlot("/")
Number setSlot("/", method(i, if (i == 0, 0, self div(i))))
1/3 println
1/0 println

a := List clone
a append(list(1,2,3))
a append(list(4,5,6))
a append(list(7,8,9))
t := 0
a foreach (o, o foreach (i, t = t + i)) println
