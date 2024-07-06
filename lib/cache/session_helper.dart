import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:time_range_picker/time_range_picker.dart';

class SessionsHelper {
  static Future<void> saveSessions(String day, List<String> sessions) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('${day}_sessions', sessions);
  }

  static Future<List<String>> loadSessions(String day) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('${day}_sessions') ?? [];
  }

  static Future<void> saveOnOffSwitch(String day, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('${day}_onOffSwitch', value);
  }

  static Future<bool> loadOnOffSwitch(String day) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('${day}_onOffSwitch') ?? false;
  }

  static Future<void> saveExpandFlag(String day, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('${day}_expandFlag', value);
  }

  static Future<bool> loadExpandFlag(String day) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('${day}_expandFlag') ?? false;
  }

  // static Future<void> saveTimeRange(TimeOfDay startTime, TimeOfDay endTime) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('startTime', '${startTime.hour}:${startTime.minute}');
  //   await prefs.setString('endTime', '${endTime.hour}:${endTime.minute}');
  // }

  static Future<void> saveStartTime(TimeOfDay startTime) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('startHour', startTime.hour);
    await prefs.setInt('startMinute', startTime.minute);
  }

  static Future<void> saveEndTime(TimeOfDay endTime) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('endHour', endTime.hour);
    await prefs.setInt('endMinute', endTime.minute);
  }

  static Future<TimeRange> loadTimeRange() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final startTimeString = prefs.getString('startTime') ?? '08:00';
    final endTimeString = prefs.getString('endTime') ?? '17:00';

    final startTime = TimeOfDay(
      hour: int.parse(startTimeString.split(':')[0]),
      minute: int.parse(startTimeString.split(':')[1]),
    );
    final endTime = TimeOfDay(
      hour: int.parse(endTimeString.split(':')[0]),
      minute: int.parse(endTimeString.split(':')[1]),
    );

    return TimeRange(startTime: startTime, endTime: endTime);
  }

  static Future<TimeOfDay?> loadStartTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? hour = prefs.getInt('startHour');
    final int? minute = prefs.getInt('startMinute');
    if (hour != null && minute != null) {
      return TimeOfDay(hour: hour, minute: minute);
    }
    return null;
  }

  static Future<TimeOfDay?> loadEndTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? hour = prefs.getInt('endHour');
    final int? minute = prefs.getInt('endMinute');
    if (hour != null && minute != null) {
      return TimeOfDay(hour: hour, minute: minute);
    }
    return null;
  }
}
