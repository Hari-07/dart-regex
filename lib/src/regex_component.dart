abstract class RegexComponent {
  String toRegexPattern();

  @override
  String toString() => toRegexPattern();
}
