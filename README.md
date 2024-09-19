# HR-Management-System-HRMS-App

Project Title: HR Management System (HRMS) App in Flutter
Objective:
To develop a mobile application that helps HR departments manage employee data, track attendance, leave, and performance, and provide a self-service portal for employees using Flutter.

Project Features:
Employee Self-Service Portal:

Login/Signup: Employees can register and log in securely using their credentials.
Profile Management: Employees can view and update their personal details (name, contact, job title, department).
View Attendance & Leave: Employees can check attendance history, view leave balances, and submit leave requests.
Leave Management:

Request Leave: Employees can request leave by selecting dates and providing reasons.
Track Leave Status: Employees can see the approval status of their leave requests.
Leave Balance: Real-time leave balance display based on applied and approved leaves.
Attendance Tracking:

Employees can log their daily attendance using a simple check-in/check-out system.
Track attendance history and check weekly/monthly attendance reports.
Performance Tracking:

Employees can view performance goals and feedback provided by HR or supervisors.
Set personal goals and mark progress for review during performance appraisals.
Payroll Access:

Employees can view their monthly salary slips, with breakdowns of deductions and allowances.
HR Dashboard:

A special login for HR managers to:
Manage employee profiles.
Approve or reject leave requests.
View employee attendance and performance reports.
Generate payroll reports for employees.
UI Design Ideas:
Login Screen:

Simple login with email and password.
Option to reset the password.
Employee Dashboard:

Tabs for:
Profile
Attendance
Leave
Performance
Payroll
Clear icons and easy navigation.
Attendance Page:

Button to "Check In" or "Check Out".
List view to show daily attendance logs.
Leave Management Page:

Form for requesting leave with fields for start date, end date, and reason.
A section for approved, pending, or rejected leaves.
Performance Page:

Displays current goals and feedback from supervisors.
An option to add personal achievements or progress.
Payroll Page:

Monthly salary breakdown with downloadable payslips.
HR Dashboard (Admin):

Different UI for HR managers to manage employee data and requests.
Approve/reject leave requests.
View employee performance and attendance reports.
Technologies & Packages Used:
Flutter & Dart: Core framework and language for the app.
Provider or Riverpod: For state management across the app (especially for employee data, attendance, and leave management).
Firebase (or Supabase): For user authentication and real-time database storage of employee data, leave requests, attendance, etc.
Google Sheets API or Firebase Firestore: To store payroll data and generate reports for both employees and HR.
Charts Package: To visualize attendance, performance, and leave reports in graphical format.
HTTP Package: For API integration (if using external services for payroll data or performance management).

Project Structure:
lib/
main.dart: Main entry point of the app.
models/: Contains data models for employees, leave requests, attendance, and payroll.
employee.dart
attendance.dart
leave_request.dart
screens/:
login_screen.dart: Login and signup functionality.
dashboard.dart: Employee dashboard with navigation to attendance, leave, and payroll screens.
attendance_screen.dart: For checking in/out and viewing attendance history.
leave_screen.dart: Request leave and view leave status.
performance_screen.dart: Display performance goals and feedback.
payroll_screen.dart: Show salary slips and payroll data.
hr_dashboard.dart: For HR managers to manage employee data, attendance, and leaves.
services/: Handles business logic and API calls.
auth_service.dart: User authentication (using Firebase Auth or similar).
employee_service.dart: CRUD operations for employee data.
attendance_service.dart: Logic for checking in and tracking attendance.
leave_service.dart: Submit and track leave requests.
payroll_service.dart: Display and generate payroll information.
widgets/:
custom_button.dart: Reusable custom button widget.
input_field.dart: Custom input field for forms (used in leave and login screens).
attendance_card.dart: A widget to display attendance history.
leave_card.dart: A widget to show leave request status.
Challenges & Learning Outcomes:
User Authentication & Role Management:

Implementing secure login with role-based access (employees vs. HR managers).
Learning how to integrate Firebase Auth for managing different types of users.
Real-Time Data Handling:

Managing real-time employee data for attendance, leave, and payroll using Firebase Firestore or Realtime Database.
Handling updates when HR managers approve/reject leave requests in real time.
State Management:

Using Provider or Riverpod to manage the state of different components like attendance logs and leave requests throughout the app.
UI/UX Optimization:

Building a responsive UI that caters to both employees and HR, ensuring a seamless experience across devices.
Future Enhancements:
Push Notifications: Integrate notifications for employees when leave requests are approved or when attendance logs are updated.
Analytics for HR: Add more detailed insights on employee performance and attendance, allowing HR to make data-driven decisions.
Multi-language Support: To make the app more accessible, you can add localization for multiple languages.
Expected Output:
A fully functional HR Management System (HRMS) mobile application built with Flutter, allowing employees to manage their profiles, track attendance, request leaves, view performance reviews, and access payroll data, while HR can efficiently manage employee data and processes.
