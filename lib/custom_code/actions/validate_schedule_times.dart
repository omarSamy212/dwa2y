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

bool validateScheduleTimes(List<ScheduleStruct> schedule) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  try {
    // Loop through each schedule in the list
    for (final scheduleEntry in schedule) {
      // Ensure the 'time' field exists and is a valid DateTime
      if (scheduleEntry.time == null) {
        return false; // Invalid structure or missing 'time' field
      }

      final DateTime time = scheduleEntry.time!;

      // Check if the minute and second parts are zero
      if (time.minute != 0 || time.second != 0) {
        return false; // Not an exact hour
      }
    }

    // If all schedule times pass validation, return true
    return true;
  } catch (e) {
    print('Error validating schedule: $e');
    return false; // Return false if any exception occurs
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
