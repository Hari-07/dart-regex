import 'package:dart_regex/src/atoms.dart';
import 'package:dart_regex/src/dart_regex.dart';
import 'package:dart_regex/src/groups.dart';
import 'package:dart_regex/src/quantifiers.dart';

void main() {
  final email = 'email@gmail.com';

  final match1 = emailPattern.firstMatch(email)?.groups([0, 1, 2]);
  print(match1);

  final match2 = emailPatternDSL.firstMatch(email)?.groups([0, 1, 2]);
  print(match2);
}

final emailPattern = RegExp(r'(\w+)@([\w.\w]+)');

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
