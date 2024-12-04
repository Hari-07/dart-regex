import '../dart_regex.dart';

/// These are the basic building blocks of a regex expression
abstract class Atom extends RegexComponent {
  final String pattern;

  Atom(this.pattern);

  @override
  String toRegexPattern() => pattern;
}

class Word extends Atom {
  Word() : super(r'\w');
}

class Digit extends Atom {
  Digit() : super(r'\d');
}

class Whitespace extends Atom {
  Whitespace() : super(r'\s');
}

class AnyCharacter extends Atom {
  AnyCharacter() : super(r'.');
}

class CharacterSet extends Atom {
  CharacterSet(super.chars);
}

class AtomGroup extends Atom {
  final List<Atom> atoms;
  AtomGroup(this.atoms)
      : super(
          '[${atoms.map((at) => at.toRegexPattern()).join()}]',
        );
}
