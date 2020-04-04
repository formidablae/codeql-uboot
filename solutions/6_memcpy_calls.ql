import cpp

// Version with two variables
// from Function f, FunctionCall c
// where c.getTarget() = f and f.getName() = "memcpy"
// select c, f

// More compact version with the Function variable implicit
from FunctionCall c
where c.getTarget().getName() = "memcpy"
select c
