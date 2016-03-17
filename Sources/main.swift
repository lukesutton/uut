// A mixin is literally just a function
func widthMixin() -> Mixin {
  return mixin(Width("10em"))
}

let placeholder = style(classname("what"), Width("200px"))

// Construct styles in a way analagous to LESS, SASS etc.
let header = style(
  id("what") | classname("Heck") |+ classname("nope", firstChild()),

  BackgroundImage("derp"),
  widthMixin(),
  extends(placeholder),

  style(
    classname("fred"),
    BackgroundImage("what")
  )
)

var package = StylePackage("public")

package.add(header, placeholder)

print(package.toString())
