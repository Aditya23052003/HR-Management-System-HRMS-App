
import 'dart:async';
import '../models/attendance.dart';

class AttendanceService {
  List<Attendance> _attendanceLogs = [];
  DateTime? _currentCheckIn;

  Future<void> checkIn() async {
    _currentCheckIn = DateTime.now();
  }

  Future<void> checkOut() async {
    if (_currentCheckIn != null) {
      _attendanceLogs.add(Attendance(
        id: DateTime.now().toString(),
        checkIn: _currentCheckIn!,
        checkOut: DateTime.now(),
      ));
      _currentCheckIn = null;
    }
  }

  Future<List<Attendance>> getAttendanceLogs() async {
    return _attendanceLogs;
  }
}
