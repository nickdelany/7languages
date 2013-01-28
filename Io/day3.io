Builder := Object clone
Builder depth := 0
Builder forward := method(
  for (i, 1, self depth, write(" "));
  writeln("<", call message name, ">")
  call message arguments foreach(
    arg, 
    self depth = self depth + 1;
    content := self doMessage(arg); 
    self depth = self depth - 1;
    if(content type == "Sequence",
      for (i, 0, self depth, write(" "));
      writeln(content);
    )
  )
  for (i, 1, self depth, write(" "));
  writeln("</", call message name, ">")
)

Builder ul(
	li("Io"), 
	li(b("Lua")), 
	li("JavaScript")
)
