class Fighter {
  final String name;
  final String lastName;
  final String record;
  final String nationality;

  const Fighter({
    required this.name,
    required this.lastName,
    required this.nationality,
    required this.record,
  });

  @override
  String toString() {
    return """
      name -> $name
      lastName -> $lastName
      record -> $record
      nationality -> $nationality
    """;
  }
}
