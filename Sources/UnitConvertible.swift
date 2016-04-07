protocol UnitConvertible {
  var em: Values.Unit { get }
  var px: Values.Unit { get }
  var rem: Values.Unit { get }
  var percent: Values.Unit { get }
}

extension Int: UnitConvertible {
  var em: Values.Unit {
    return Values.Unit.Em(Double(self))
  }

  var px: Values.Unit {
    return Values.Unit.Px(self)
  }

  var rem: Values.Unit {
    return Values.Unit.Rem(Double(self))
  }

  var percent: Values.Unit {
    return Values.Unit.Percent(Double(self))
  }
}

extension Double: UnitConvertible {
  var em: Values.Unit {
    return Values.Unit.Em(self)
  }

  var px: Values.Unit {
    return Values.Unit.Px(Int(self))
  }

  var rem: Values.Unit {
    return Values.Unit.Rem(self)
  }

  var percent: Values.Unit {
    return Values.Unit.Percent(self)
  }
}
