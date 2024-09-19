
import 'package:flutter/material.dart';
import '../services/attendance_service.dart';
import '../models/attendance.dart';
import '../widgets/attendance_card.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  bool _isLoading = false;
  List<Attendance> _attendanceList = [];

  @override
  void initState() {
    super.initState();
    _loadAttendance();
  }

  void _loadAttendance() async {
    setState(() { _isLoading = true; });
    _attendanceList = await AttendanceService().getAttendanceLogs();
    setState(() { _isLoading = false; });
  }

  void _checkIn() async {
    setState(() { _isLoading = true; });
    await AttendanceService().checkIn();
    _loadAttendance();
  }

  void _checkOut() async {
    setState(() { _isLoading = true; });
    await AttendanceService().checkOut();
    _loadAttendance();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(child: CircularProgressIndicator())
        : Column(
            children: [
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _checkIn,
                child: Text('Check In'),
              ),
              ElevatedButton(
                onPressed: _checkOut,
                child: Text('Check Out'),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _attendanceList.length,
                  itemBuilder: (context, index) {
                    return AttendanceCard(attendance: _attendanceList[index]);
                  },
                ),
              ),
            ],
          );
  }
}
