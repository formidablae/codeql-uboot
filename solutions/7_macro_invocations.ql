import cpp

// Version with two variables
// from Macro m, MacroInvocation mi
// where
//   m.getName().regexpMatch("ntoh(s|l|ll)") and
//   mi.getMacro() = m
// select mi, m

// More compact version with the Macro variable implicit
from MacroInvocation mi
where mi.getMacro().getName().regexpMatch("ntoh(s|l|ll)")
select mi
