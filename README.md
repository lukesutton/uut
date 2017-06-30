# Uut

This is a Swift library which provides a domain-specific-language for generating Cascading Style Sheets. There core idea is to expose all of Swift's features when generating CSS. Rather than defining a templating language with it's own semantics, we can just use Swift.

The main target for this library is web-frameworks written in Swift.

## Features

- Composable, type-safe selectors
- Type-safe constructors for properties
- Rule composition using mixins and extension
- Build and manipulate CSS in Swift!

## An Example

```swift
import Uut

let rule = Rule(
  description: "A test rule",
  selector: .id("what"),
  properties: [
    .marginLeft(1.em),
    .borderStyle(.solid),
    .borderWidth(1.px),
    .borderColor(.keyword(.red))
  ]
)

print(rule.render())
```
