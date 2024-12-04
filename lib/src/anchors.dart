import 'atoms.dart';

class StartOfLine extends Atom {
  StartOfLine() : super('^');
}

class EndOfLine extends Atom {
  EndOfLine() : super(r'$');
}

class WordBoundary extends Atom {
  WordBoundary() : super(r'\b');
}
