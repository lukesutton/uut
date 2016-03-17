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

  style(
    ClassName("fred"),
    BackgroundImage("what")
  )
)

var package = StylePackage("public")

package.add(header, placeholder)

print(package.toString())
