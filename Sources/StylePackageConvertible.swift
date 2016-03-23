public protocol StylePackageConvertible {
  var stylePackage: StylePackage { get }
}

extension StylePackage: StylePackageConvertible {
  public var stylePackage: StylePackage {
    return self
  }
}

extension Style: StylePackageConvertible {
  public var stylePackage: StylePackage {
    return StylePackage(self)
  }
}
