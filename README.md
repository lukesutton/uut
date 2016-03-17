# Uut

Can you write CSS using pure Swift? Maybe? Let's find out!

## Selectors

Selectors can be constructed in a way that's -- mostly -- type-safe. Also, because the selectors are Swift values, they can be passed around as arguments to functions, stored and composed together .

```swift
let s = id("header") | classname("nav-entry")
print(s.toString())
// #id .nav-entry
```

Or maybe you want to use some psuedo-selectors.

```swift
let s = classname("nav-entry", firstChild(), hover()) | el(.A)
print(s.toString())
// .nav-entry:first-child:hover a
```

Or go nuts with something really complicated with operators and all the other exciting things in CSS selectors.

```swift
let s = id("dialog", classname("warning")) |> el(.Div, attrContains("data-id", "foo"))
print(s.toString())
// #dialog.warning > div[data-id~="foo"]
```

## Style Block

Style blocks are also Swift values. The selector and properties are constructed using structs and enums. Here is a simple example.

```swift
let header = style(id("header")
  BackgroundImage("/images/header-background.png"),
  Width("100%")
)

print(header.toString())
// #header { background-image: url("/images/header-background.png"); width: 100%; }
```

## Mixins

Style blocks can also be composed of mixins, which are analogous to what you see in LESS or SASS. Here is constructing and using a simple mixin.

```swift
let foo = mixin(
  BackgroundColor("red")
)

let bar = style(classname("herp") |+ classname("derp"),
  foo
)

print(bar.toString())
// .herp + .derp { background-color: red }
```

Mixins are just values, but if you needed to do parameterize them for some reason, you can wrap them in a function. Here is the same result as above, but using a function to provide the `background-color`.


```swift
func foo(color: String) -> Mixin {
  return mixin(BackgroundColor("color"))
}

let bar = style(classname("herp") |+ classname("derp"),
  foo("red")
)

print(bar.toString())
// .herp + .derp { background-color: red }
```

## Parameterized Styles

This is not a feature per se, but something nice that falls out of constructing styles with Swift values. It's very simple to parameterize whole style blocks.

```swift
func foo(name: String, width: String) -> Block {
  return style(classname(name)
    Width(width)
  )
}
```

## To Dos

This project is still at the prototype stage, but there are some obvious features to add.

* [ ] Compiling a set of styles and write CSS to disk
* [ ] More properties
* [ ] Encode more property values as enums etc
* [ ] Allow the definition of style packages e.g. group a collection of styles and output them together
* [ ] Functions for manipulating colour values
* [ ] Output of browser-specific properties
* [ ] Extensions ala SASS or at least similar functionality
