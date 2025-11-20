import 'package:mobile/model/fighter.dart';

class Fight {
  final Fighter fighter1;
  final Fighter fighter2;
  final String weightClass;
  final Odds odds;

  const Fight({
    required this.fighter1,
    required this.fighter2,
    required this.weightClass,
    required this.odds,
  });

  @override
  String toString() {
    return """
      fighter1 -> $fighter1
      fighter2 -> $fighter2
      weightClass -> $weightClass
      odds -> ${odds.toString()}
    """;
  }
}

class Odds {
  final String fighter1;
  final String fighter2;

  const Odds({required this.fighter1, required this.fighter2});

  @override
  String toString() {
    return """
      fighter1 -> $fighter1
      fighter2 -> $fighter2
    """;
  }
}