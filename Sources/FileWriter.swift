import Foundation

public struct FileWriter {
  let compiler: Compiler

  public init(compiler: Compiler) {
    self.compiler = compiler
  }

  public func write(packages: [StylePackage], to outputPath: String) throws {
    for package in packages {
      let output = compiler.compile(package)
      let fullPath = "\(outputPath)/\(package.name).css"
      try output.writeToFile(fullPath, atomically: true, encoding: NSUTF8StringEncoding)
    }
  }
}
