
class Attendance {
  final String id;
  final DateTime checkIn;
  final DateTime? checkOut;

  Attendance({
    required this.id,
    required this.checkIn,
    this.checkOut,
  });
}
