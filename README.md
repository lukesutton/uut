![](https://cdn.rawgit.com/lukesutton/uut/master/logo.svg)

# Uut - A Swift Domain Specific Language for CSS

Can you write CSS using pure Swift? Yes you can. Uut is a domain specific language implemented as a pure Swift library. Import it into your project, specify your styles and compile to CSS strings.

## A Bit of a Taste

```swift
// Extensions ala SASS
let ext = styleExtension(
  bottom(0.em)
)

// Media queries, which are then attached to styles
let query = MediaQueries.maxWidth(600.px)

let styles = [
  // A basic style, but this one has a media query attached to it. It will be
  // grouped with other styles that attach the same query.
  style(query, Selectors.classname("what"),
    float(.Left)
  ),

  // A simple style that just uses an extension. It's selector will be hoisted
  // up and rendered out with the extension properties.
  style(Selectors.classname("what"),
    extends(ext)
  ),

  // A more complete example.
  // - Use an extension
  // - A child style; which will have the selector .articles .article
  style(Selectors.classname("articles"),
    extends(ext),
    backgroundColor(Values.Color(0, 0, 0)),

    style(Selectors.classname("article"),
      borderStyle(.Solid),
      backgroundColor(Values.Color(0, 255, 0)),

      style(Selectors.el("h2"),
        fontWeight(.Bold),
        fontFamily("Helvetica Neue", "Helvetica", "Arial", fallback: .SansSerif),
        color(Values.Color(255, 0, 0))
      )
    )
  )
]

// A compiler is initialized and can optionally have middleware functions
// configured which are used to pre/post-process styles.
let compiler = Compiler()
let result = compiler.compile(styles)
```
## Philosophy

I've used a few different CSS super-sets, preprocessors or compile-to-CSS languages. They are a fantastic idea. I now feel that writing plain CSS is painful for any moderately complicated project. However, I do have some issues with the current approaches. There is either an impedance mismatch between CSS and the processing language or a library expands to encompass an ad-hoc scripting language e.g. SASS-script.

This problem can be stated a different way; these libraries don't expose the full power of a programming language. So, the goal of Uut is to embed a dialect of CSS inside of Swift.

### Advantages

Aside from being an interesting experiment, I was attracted to this project because of some advantages I perceived.

* Has a measure of type-safety e.g. property values can be defined as enums, preventing errors
* Simple implementation; no parsers, no interpreters for a custom scripting language etc.
* You can use all of Swift's constructs in order to generate an manipulate styles
* Writing transformations is _trivial_, since the CSS is represented as a collection of structs

### Disadvantages

This library does of course have some serious disadvantages, which may be more or less serious depending on your needs.

* You need to know Swift
* Difficult to embed in anything that isn't a Swift project

Even with these caveats, I still thing this approach is worthwhile.

## Aims for 1.0

For the initial release of this library, the aim is to have to following features:

* [ ] CSS1, CSS2 and the most common CSS3 properties
* [ ] Widely supported selectors
* [ ] Widely supported media queries
* [ ] Basic tooling for compiling, with pre/post-processing and writing to disk
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
let s = Selectors.id("header") |- Selectors.classname("nav-entry")
print(s.stringValue)
// #id .nav-entry
```

Or maybe you want to use some psuedo-selectors.

```swift
let s = Selectors.classname("nav-entry", Selectors.firstChild(), Selectors.hover())
print(s.stringValue)
// .nav-entry:first-child:hover
```

Or go nuts with something really complicated with operators and all the other exciting things in CSS selectors.

```swift
let s = Selectors.id("dialog", Selectors.classname("warning")) |> Selectors.el("div", Selectors.attrContains("data-id", "foo"))
print(s.stringValue)
// #dialog.warning > div[data-id~="foo"]
```

## Style Block

Style blocks are also Swift values. The selector and properties are constructed using structs and enums. Here is a simple example.

```swift
let header = style(Selectors.id("header"),
  backgroundImage("/images/header-background.png"),
  width(100.percent)
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
let foo = mixin(
  backgroundColor(.Red)
)

let bar = style(Selectors.classname("herp") |+ Selectors.classname("derp"),
  mixesIn(foo)
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
  return mixin(backgroundColor(color))
}

let bar = Style(Selectors.Class("herp") |+ Selectors.Class("derp"),
  mixesIn(foo(Values.Color(0, 0, 0)))
)

let compiler = Compiler()
print(compiler.compile(bar))

/*
.herp + .derp {
  background-color: rgba(0, 0, 0, 1)
}
*/
```

## Parameterized Styles

This is not a feature per se, but something nice that falls out of constructing styles with Swift values. It's very simple to parameterize whole style blocks.

```swift
func foo(name: String, width: Measurement) -> Block {
  return style(Selectors.classname(name),
    width(width)
  )
}
```
