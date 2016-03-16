// A mixin is literally just a function
func widthMixin() -> Mixin {
  return mixin(Width("10em"))
}


// Construct styles in a way analagous to LESS, SASS etc.
let header = style(
  Selector(),
  BackgroundImage("derp"),
  widthMixin(),

  child(
    Selector(),
    BackgroundImage("what")
  )
)

print(header)

// Builder style syntax
let derp = builder(Selector()) { s in
  s.properties(
    BackgroundImage("What")
  )
}

print(derp)
