protocol MeasurementConvertible {
  var em: Values.Em { get }
  var px: Values.Px { get }
  var rem: Values.Rem { get }
  var percent: Values.Percent { get }
}

extension Int: MeasurementConvertible {
  public var em: Values.Em {
    return Values.Em(Double(self))
  }

  public var px: Values.Px {
    return Values.Px(Double(self))
  }

  public var rem: Values.Rem {
    return Values.Rem(Double(self))
  }

  public var percent: Values.Percent {
    return Values.Percent(Double(self))
  }
}

extension Double: MeasurementConvertible {
  public var em: Values.Em{
    return Values.Em(self)
  }

  public var px: Values.Px {
    return Values.Px(self)
  }

  public var rem: Values.Rem {
    return Values.Rem(self)
  }

  public var percent: Values.Percent {
    return Values.Percent(self)
  }
}
