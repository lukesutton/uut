# Uut

Can you write CSS using pure Swift? Maybe? Let's find out!

## A Bit of a Taste

````swift
// Extensions ala SASS
let ext = StyleExtension(
  Properties.Bottom(.Unit(.Em(0)))
)

// Media queries, which are then attached to styles
let query = MediaQueries.MaxWidth(.Px(600))

let styles = [
  // A basic style, but this one has a media query attached to it. It will be
  // grouped with other styles that attach the same query.
  Style(
    Selectors.Class("what"),
    query: query,
    Properties.Float(.Left)
  ),

  // A simple style that just uses an extension. It's selector will be hoisted
  // up and rendered out with the extension properties.
  Style(
    Selectors.Class("what"),
    extensions: [ext]
  ),

  // A more complete example.
  // - Use an extension
  // - A child style; which will have the selector .articles .article
  Style(
    Selectors.Class("articles"),
    extensions: [ext],
    Properties.BackgroundColor(.Color(.Black)),

    Style(
      Selectors.Class("article"),
      Properties.BorderStyle(.Solid),
      Properties.BackgroundColor(.Color(.Black))
    )
  )
]

// A compiler is initialized and can optionally have middleware functions
// configured which are used to pre/post-process styles.
let compiler = Compiler()
let result = compiler.compile(styles)
```

## Please Note

* I don't know what I'm doing
* This isn't useful for real work yet
* It's untested as a library; I've just been noodling about
* I would be happy to hear any suggestions, so feel free to open a ticket with comments or issues

## Aims for 1.0

For the initial release of this library, the aim is to have to following features:

* [ ] CSS1, CSS2 and the most common CSS3 properties
* [ ] Widely supported selectors
* [ ] Widely supported media queries
* [ ] Basic tooling for compiling, with pre/post-prosessing and writing to disk
* [ ] A complete test suite
* [ ] API documentation
* [ ] Guides on getting started and advanced usage, including example projects

Beyond this initial release, future plans include:

* More complete coverage of selectors and properties
* Compiler middleware
    * Inject vendor-specific property names/values
    * Polyfills for patchy support or upcoming CSS features
* Utility functions
    * Color manipulation
    * Unit manipulation
* Namespacing styles e.g. components
* Helpers for constructing flex-box layouts; flex-box is often confusing

## Selectors

Selectors can be constructed in a way that's — mostly — type-safe. Also, because the selectors are Swift values, they can be passed around as arguments to functions, stored and composed together .

```swift
let s = Selectors.ID("header") | Selectors.Class("nav-entry")
print(s.stringValue)
// #id .nav-entry
```

Or maybe you want to use some psuedo-selectors.

```swift
let s = Selectors.Class("nav-entry", Selectors.FirstChild(), Selectors.Hover())
print(s.stringValue)
// .nav-entry:first-child:hover
```

Or go nuts with something really complicated with operators and all the other exciting things in CSS selectors.

```swift
let s = Selectors.ID("dialog", Selectors.Class("warning")) |> Selectors.El(.Div, Selectors.AttrContains("data-id", "foo"))
print(s.stringValue)
// #dialog.warning > div[data-id~="foo"]
```

## Style Block

Style blocks are also Swift values. The selector and properties are constructed using structs and enums. Here is a simple example.

```swift
let header = Style(Selectors.ID("header"),
  Properties.BackgroundImage(.URL("/images/header-background.png"))
  Properties.Width(.Unit(.Percent(100)))
)

let compiler = Compiler()
print(compiler.compile(header))

/*
#header {
  background-image: url("/images/header-background.png");
  width: 100%;
}
*/
```

## Mixins

Style blocks can also be composed of mixins, which are analogous to what you see in LESS or SASS. Here is constructing and using a simple mixin.

```swift
let foo = Mixin(
  Properties.BackgroundColor(.Color(.Red))
)

let bar = Style(Selectors.Class("herp") |+ Selectors.Class("derp"),
  foo
)

let compiler = Compiler()
print(compiler.compile(bar))

/*
.herp + .derp {
  background-color: red
}
*/
```

Mixins are just values, but if you needed to parameterize them for some reason, you can wrap them in a function. Here is the same result as above, but using a function to provide the `background-color`.


```swift
func foo(color: Values.Color) -> Mixin {
  return Mixin(PropertiesBackgroundColor(color))
}

let bar = Style(Selectors.Class("herp") |+ Selectors.Class("derp"),
  foo
)

let compiler = Compiler()
print(compiler.compile(bar))

/*
.herp + .derp {
  background-color: red
}
*/
```

## Parameterized Styles

This is not a feature per se, but something nice that falls out of constructing styles with Swift values. It's very simple to parameterize whole style blocks.

```swift
func foo(name: String, width: Values.Unit) -> Block {
  return Style(Selectors.Class(name),
    Properties.Width(width)
  )
}
```
