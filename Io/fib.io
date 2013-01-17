fibnum := method(i, 
  fib := list(1, 1);
  while (i > (fib size) and (fib size < 15),
      fib prepend((fib at(1))+(fib at(0)))
  );
  fib at(0)
)

fibnum(9)
