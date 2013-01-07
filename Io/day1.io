1 + 1 println

e := try(
  1 + "one"
  "Weakly typed" println
)

e catch (Exception,
  "Strongly typed" println
)

0 == true println

"" == false println

nil != false println

nil != true println

slotSummary println
