// A mixin is literally just a function
func widthMixin() -> Mixin {
  return mixin(Width("10em"))
}

// Construct styles in a way analagous to LESS, SASS etc.
let header = style(
  ID("what") / ClassName("Heck") + ClassName("noway"),
  BackgroundImage("derp"),
  widthMixin(),

  child(
    ClassName("fred"),
    BackgroundImage("what")
  )
)

print(header)

// Builder style syntax
let derp = builder(ClassName("ok")) { s in
  s.properties(
    BackgroundImage("What")
  )
}

print(derp)
