import '../dart_regex.dart';

/// This the root class for a regex expression
class DartRegex extends RegexComponent implements RegExp {
  final List<RegexComponent> components;
  DartRegex(this.components);

  @override
  String toRegexPattern() {
    return components.map((component) => component.toRegexPattern()).join();
  }

  RegExp get regex => RegExp(toRegexPattern());

  @override
  Iterable<RegExpMatch> allMatches(String input, [int start = 0]) {
    return regex.allMatches(input, start);
  }

  @override
  RegExpMatch? firstMatch(String input) {
    return regex.firstMatch(input);
  }

  @override
  bool hasMatch(String input) {
    return regex.hasMatch(input);
  }

  @override
  bool get isCaseSensitive => regex.isCaseSensitive;

  @override
  bool get isDotAll => regex.isDotAll;

  @override
  bool get isMultiLine => regex.isMultiLine;

  @override
  bool get isUnicode => regex.isUnicode;

  @override
  Match? matchAsPrefix(String string, [int start = 0]) {
    return regex.matchAsPrefix(string, start);
  }

  @override
  String get pattern => regex.pattern;

  @override
  String? stringMatch(String input) {
    return regex.stringMatch(input);
  }
}
