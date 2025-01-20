import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

bool checkNameRegex(
  String? name,
  String? sentence,
) {
  if (name == null || sentence == null) {
    // Handle null inputs
    return false;
  }

  // Escape special characters in the name to ensure proper regex matching
  final escapedName = RegExp.escape(name);

  // Construct a regular expression pattern to match any substring containing the name
  final RegExp regex = RegExp('.*$escapedName.*', caseSensitive: false);

  // Check if the name appears anywhere in the sentence
  return regex.hasMatch(sentence);
}

int pharmSubRemainingDays(DateTime subDate) {
// Define the subscription duration in days
  const int subscriptionDuration = 30;

  // Log the input subscription date
  debugPrint('Subscription Date: $subDate');

  // Calculate the difference between today and the subscription date
  final DateTime today = DateTime.now();
  debugPrint('Today\'s Date: $today');

  final int daysPassed = today.difference(subDate).inDays;
  debugPrint('Days Passed Since Subscription: $daysPassed');

  // Calculate the remaining days
  final int remainingDays = subscriptionDuration - daysPassed;
  debugPrint('Calculated Remaining Days: $remainingDays');

  // Ensure the remaining days are not negative
  final int result = remainingDays > 0 ? remainingDays : 0;
  debugPrint('Final Remaining Days (Non-Negative): $result');

  return result;
}
