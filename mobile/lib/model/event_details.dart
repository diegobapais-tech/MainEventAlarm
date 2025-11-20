import 'event_summary.dart';
import 'fight.dart';

class EventDetails {
  final EventCategory category;
  final EventSummary eventSummary;
  final List<Fight> mainCardFights;
  final List<Fight> prelimnsFights;
  final List<Fight>? earlyPrelimsFights;
  final String mainCardStart;
  final String prelimsStart;
  final String? earlyPrelimsStart;

  const EventDetails({
    required this.eventSummary,
    required this.mainCardFights,
    required this.prelimnsFights,
    this.earlyPrelimsFights,
    required this.mainCardStart,
    required this.prelimsStart,
    this.earlyPrelimsStart,
  }) : category = earlyPrelimsFights == null
           ? EventCategory.fightNight
           : EventCategory.numbered;

  int get fightsCount {
    int fightsCount = mainCardFights.length + prelimnsFights.length;

    if (earlyPrelimsFights != null) {
      fightsCount += earlyPrelimsFights!.length;
    }

    return fightsCount;
  }

  List<Object> get flattenedFightsList {
    List<Object> flattenedFightsList = [];

    flattenedFightsList.add('Main Card $mainCardStart');
    for (var fight in mainCardFights) {
      flattenedFightsList.add(fight);
    }

    flattenedFightsList.add('Prelims $prelimsStart');
    for (var fight in prelimnsFights) {
      flattenedFightsList.add(fight);
    }

    if (earlyPrelimsFights != null) {
      flattenedFightsList.add('Early Prelims $earlyPrelimsStart');
      for (var fight in earlyPrelimsFights!) {
        flattenedFightsList.add(fight);
      }
    }

    return flattenedFightsList;
  }

  String toStringFightNight() {
    return """
    category -> $category
    eventSummary -> $eventSummary
    mainCardStart -> $mainCardStart
    mainCardFights -> $mainCardFights
    prelimsStart -> $prelimsStart
    prelimsFights -> $prelimnsFights
  """;
  }

  String toStringNumbered() {
    return """
    ${toStringFightNight()}
    earlyPrelimsStart -> $earlyPrelimsStart
    earlyPrelimsFights -> $earlyPrelimsFights
  """;
  }
}

enum EventCategory { numbered, fightNight }
