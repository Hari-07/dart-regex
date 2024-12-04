import '../dart_regex.dart';

/// These classes are used to match a component based on
/// counting requirements
abstract class Quantifier extends RegexComponent {
  final RegexComponent component;
  final String operator;

  Quantifier(this.component, this.operator);

  @override
  String toRegexPattern() => '$component$operator';
}

class ZeroOrMore extends Quantifier {
  ZeroOrMore(RegexComponent component) : super(component, '*');
}

class OneOrMore extends Quantifier {
  OneOrMore(RegexComponent component) : super(component, '+');
}

class ZeroOrOne extends Quantifier {
  ZeroOrOne(RegexComponent component) : super(component, '?');
}

class Exactly extends Quantifier {
  Exactly(
    RegexComponent component, {
    required int n,
  }) : super(component, '{$n}');
}

// TODO: Replace the assert here with something better
class Range extends Quantifier {
  Range(
    RegexComponent component, {
    int? lower,
    int? upper,
  })  : assert(lower != null || upper != null),
        super(
          component,
          _getRangeString(lower, upper),
        );

  static String _getRangeString(int? lower, int? upper) {
    if (lower == null) {
      return '{,$upper}';
    }

    if (upper == null) {
      return '{$lower,}';
    }

    return '{$lower, $upper}';
  }
}
