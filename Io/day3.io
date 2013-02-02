OperatorTable addAssignOperator(":", "atPut")

curlyBrackets := method(
  r := Map clone;
  call message arguments foreach(arg, r doMessage (arg));
  r
)

Builder := Object clone
Builder depth := 0
Builder forward := method(
  args := call message arguments
  name := call message name
  write(" " repeated(self depth), "<", name);
  if (args first name == "curlyBrackets", 
    arg := args first;
    doMessage(arg) foreach(k, v,
      write (" ", k asMutable removeSeq("\""), "=\"", v, "\"")
    )
    args removeAt(0)
  )
  writeln(">");
  args foreach(arg, 
    self depth = self depth + 1;
    content := self doMessage(arg); 
    if (content type == "Sequence",
      writeln(" " repeated(self depth), content);
    )
    self depth = self depth - 1;
  )
  write(" " repeated(self depth));
  writeln("</", call message name, ">")
)

Builder ul({ "class": "nobullet", "selected":"true" },
	li("Io"), 
	li(b("Lua")), 
	li("JavaScript")
)

curlyBrackets := method(l := list(); call message arguments foreach(arg, l append(arg)); l)

{ 1, 2, 3 } println


