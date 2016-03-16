// A mixin is literally just a function
func widthMixin() -> Mixin {
  return mixin(Width("10em"))
}

let placeholder = style(ClassName("what"), Width("200px"))

// Construct styles in a way analagous to LESS, SASS etc.
let header = style(
  ID("what") / ClassName("Heck") + ClassName("noway"),

  BackgroundImage("derp"),
  widthMixin(),
  extends(placeholder),

  child(
    ClassName("fred"),
    BackgroundImage("what")
  )
)

print(header)
print(header.toString())

// Builder style syntax
let derp = builder(ClassName("ok")) { s in
  s.properties(
    BackgroundImage("What")
  )
}

print(derp)
