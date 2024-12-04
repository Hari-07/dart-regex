<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

A Type-safe DSL for building regular expressions in Dart using composable building blocks.

<!-- ## Features

TODO: List what your package can do. Maybe include images, gifs, or videos. -->

<!-- ## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package. -->

<!-- ## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
``` -->

## Available Components
### Atoms
  - `Word()`
  - `Digit()`
  - `Whitespace()`
  - `AnyCharacter()`
  - `CharacterSet()`
  - `AtomGroup()`

### Quantifiers
  - `ZeroOrMore()`
  - `OneOrMore()`
  - `ZeroOrOne()`
  - `Exactly()`
  - `Range()`

### Groups
  - `CaptureGroup()`

## Additional information

Feel free to file issues, this is under development, so expect breaking changes
till 1.0.0
