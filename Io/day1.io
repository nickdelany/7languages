(1 + 1) println

e := try(
  1 + "one"
  "Weakly typed" println
)
e catch (Exception,
  "Strongly typed" println
)

// all of these are true
if (0, true println, false println)
if ("", true println, false println)
((nil == false) == false) println
((nil == true) == false) println

slotSummary println
