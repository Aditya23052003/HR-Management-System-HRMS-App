
import 'package:flutter/material.dart';
import '../models/attendance.dart';

class AttendanceCard extends StatelessWidget {
  final Attendance attendance;

  AttendanceCard({required this.attendance});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text('Checked in: ${attendance.checkIn}'),
        subtitle: attendance.checkOut != null
            ? Text('Checked out: ${attendance.checkOut}')
            : Text('Not checked out yet'),
      ),
    );
  }
}
