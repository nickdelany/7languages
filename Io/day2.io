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
a := list()
a append(list(1,2,3))
a append(list(4,5,6))
a append(list(7,8,9))
t := 0
a foreach (o, o foreach (i, t = t + i)) println

# average a list
c := list(9,8,7)

List avg := method(t := 0
  self foreach (i,
    if ((i proto) != Number,
      Exception raise ("list contains non-numeric elements"),
      t = t + i))
    t / (self size)
)

(c avg) println

Matrix := Object clone

Matrix row := method(n, l := list(); for (i, 1, n, l append(0)))
Matrix alloc := method(x, y, l := list(); for (i, 1, y, l append(row(x))))
Matrix dim := method(x, y, self myList := alloc(x, y))
Matrix set := method(x, y, v, self myList at(y) atPut(x, v); self myList)
Matrix get := method(x, y, self myList at(y) at(x))
Matrix transpose := method(
  x := self myList size;
  y := self myList at(0) size;
  t := Matrix clone
  t dim (x, y)
  for (i, 0, x - 1,
    for (j, 0, y - 1,
      t set(i, j, self get (j, i))
    )
  )
  t
)

m := Matrix clone
m dim(4, 6)
m set(2, 4, 99)
m get(2, 4) println

t := m transpose

(t get(4, 2) == m get (2, 4)) println
