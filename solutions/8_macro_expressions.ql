import cpp

from MacroInvocation mi
where mi.getMacro().getName().regexpMatch("ntoh(s|l|ll)")
select mi.getExpr()
