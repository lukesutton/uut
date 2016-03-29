# Uut

Can you write CSS using pure Swift? Maybe? Let's find out!

## Please Note

* I don't know what I'm doing
* This isn't useful for real work yet
* It's untested as a library; I've just been noodling about
* I would be happy to hear any suggestions, so feel free to open a ticket with comments or issues

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

## To Dos

This project is still at the prototype stage, but there are some obvious features to add.

* [ ] Compiling a set of styles and write CSS to disk
* [ ] More properties
* [ ] Encode more property values as enums etc
* [x] Allow the definition of style packages e.g. group a collection of styles and output them together
* [ ] Functions for manipulating colour values
* [ ] Output of browser-specific properties
* [ ] Extensions ala SASS or at least similar functionality
