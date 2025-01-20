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

Future<bool> linkPharmacyAndPatient(
  DocumentReference pharmRef,
  DocumentReference userRef,
  DocumentReference patientRef,
) async {
  try {
    // Perform all updates in a batch for atomicity
    WriteBatch batch = FirebaseFirestore.instance.batch();

    // Add the pharmRef to the 'linkedPharmacies' list in the user document
    batch.update(userRef, {
      'linkedPharmacies': FieldValue.arrayUnion([pharmRef])
    });

    // Add the pharmRef to the 'linkedPharmacies' list in the patient document
    batch.update(patientRef, {
      'linkedPharmacies': FieldValue.arrayUnion([pharmRef])
    });

    // Add the patientRef to the 'linkedPatients' list in the pharmacy document
    batch.update(pharmRef, {
      'linkedPatients': FieldValue.arrayUnion([patientRef])
    });

    // Commit the batch
    await batch.commit();

    // If all updates succeed, return true
    return true;
  } catch (e) {
    print('Error linking pharmacy and patient: $e');
    // Return false if any operation fails
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
