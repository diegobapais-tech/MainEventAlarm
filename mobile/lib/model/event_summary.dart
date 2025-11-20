class EventSummary {
  final String eventName;
  final String arena; // Antes "location"
  final String location; // Ciudad + país
  final DateTime date;

  const EventSummary({
    required this.eventName,
    required this.arena,
    required this.location,
    required this.date,
  });

  String get date2String {
    return "${date.day}/${date.month}/${date.year}";
  }

  @override
  String toString() {
    return """
      eventName -> $eventName
      area      -> $arena
      location  -> $location
      date      -> $date2String
    """;
  }
}
