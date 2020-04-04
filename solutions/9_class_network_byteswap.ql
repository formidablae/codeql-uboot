import cpp

/**
 * An expression involved when swapping the byte order of network data.
 * Its value is likely to have been read from the network.
 */
class NetworkByteSwap extends Expr {
  NetworkByteSwap() {
    exists(MacroInvocation mi |
      mi.getMacroName().regexpMatch("ntoh(s|l|ll)") and
      this = mi.getExpr()
    )
  }
}

from NetworkByteSwap n
select n
