# fibonacci
fibnum := method(i, 
  fib := list(1, 1);
  while (i > (fib size) and (fib size < 15),
      fib prepend((fib at(1))+(fib at(0)))
  );
  fib at(0)
)

fibnum(9) println

#replace division by zero
div := Number getSlot("/")
Number setSlot("/", method(i, if (i == 0, 0, self div(i))))
1/3 println
1/0 println

# sum a 2d array
a := List clone
a append(list(1,2,3))
a append(list(4,5,6))
a append(list(7,8,9))
t := 0
a foreach (o, o foreach (i, t = t + i)) println
