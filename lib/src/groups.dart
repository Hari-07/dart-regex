import '../dart_regex.dart';

class CaptureGroup extends RegexComponent {
  final RegexComponent component;
  CaptureGroup(this.component);

  @override
  String toRegexPattern() => '(${component.toRegexPattern()})';
}
