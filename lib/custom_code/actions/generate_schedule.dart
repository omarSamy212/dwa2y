// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

List<ScheduleStruct> generateSchedule(int dosagePerDay, int pillsPerDose) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Ensure the dosage per day does not exceed the max limit of 6
  if (dosagePerDay > 6) {
    throw ArgumentError('Dosage per day cannot exceed 6.');
  }

  // List to hold the generated schedule
  final List<ScheduleStruct> schedule = [];

  // Calculate the interval between doses in hours
  final int interval = (24 / dosagePerDay).floor();

  // Generate the schedule times
  for (int i = 0; i < dosagePerDay; i++) {
    // Calculate the time for this dose
    final DateTime time = DateTime(2025, 1, 17, (i * interval) % 24, 0, 0);

    // Create a ScheduleStruct and add it to the list
    schedule.add(ScheduleStruct(
      time: time,
      pills: pillsPerDose,
    ));
  }

  return schedule;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
