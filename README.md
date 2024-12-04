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

## Usage

```dart
final DartRegex emailPatternDSL = DartRegex([
  CaptureGroup(
    OneOrMore(Word()),
  ),
  CharacterSet('@'),
  CaptureGroup(
    OneOrMore(
      AtomGroup(
        [Word(), CharacterSet('.'), Word()],
      ),
    ),
  ),
]);
```

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
