// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference?> createPatient(
  String email,
  String name,
  String password,
  String phone,
  String notes,
  String age,
  Role role,
  DocumentReference pharmacyRef, // Pharmacy reference
) async {
  try {
    // Generate a unique app name for Firebase initialization
    final randomDocGen = 'tempApp_${Random().nextInt(1000000)}';

    // Initialize a secondary Firebase app
    FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen,
      options: Firebase.app().options,
    );

    // Use the secondary app to create a user
    final secondaryAuth = FirebaseAuth.instanceFor(app: app);
    final UserCredential userCredential =
        await secondaryAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final userId = userCredential.user?.uid;

    // Ensure userId is created successfully
    if (userId == null) {
      throw Exception('Failed to create user.');
    }

    // Create the user document in Firestore
    final userDocRef =
        FirebaseFirestore.instance.collection('users').doc(userId);
    final userDoc = {
      'email': email,
      'created_at': FieldValue.serverTimestamp(),
      'phone_number': phone,
      'display_name': name,
      'linkedPharmacies': FieldValue.arrayUnion([pharmacyRef]),
      'role': role.name,
      'age': age
    };
    await userDocRef.set(userDoc);

    // Create the patient document in Firestore
    // final patientDocRef =
    //     FirebaseFirestore.instance.collection('patients').doc();
    // final patientDoc = {
    //   'name': name,
    //   'phone': phone,
    //   'notes': notes,
    //   'userRef': userDocRef, // Reference to the created user document
    //   'linkedPharmacies':
    //       FieldValue.arrayUnion([pharmacyRef]), // Add pharmacyRef to the list
    //   'created_at': FieldValue.serverTimestamp(),
    // };
    // await patientDocRef.set(patientDoc);

    // // Update the user document with a reference to the patient document
    // await userDocRef.update({'patientRef': patientDocRef});

    // Delete the temporary app instance
    await app.delete();

    // Return the Firestore document reference of the created patient
    return userDocRef;
  } catch (e) {
    print('Error creating patient:$e');
    return null; // Return null on failure
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
