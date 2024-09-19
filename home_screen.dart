
import 'package:flutter/material.dart';
import 'attendance_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Attendance Home')),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Attendance'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AttendanceScreen()),
            );
          },
        ),
      ),
    );
  }
}
