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

// Replace 'YourRoleEnum' with the actual enum type you defined in FlutterFlow
Future<DocumentReference?> createPharmAcc(
  String email,
  String name,
  String password,
  String logoUrl,
  String location,
  String phone,
  Role role, // Enum type from FlutterFlow
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

    // Add user document to Firestore
    final userDoc = {
      'email': email,
      'role': role.toString(), // Convert enum to string for Firestore storage
      'created_at': FieldValue.serverTimestamp(),
      'photo_url': logoUrl,
      'phone_number': phone,
      'display_name': name
    };

    final userDocRef =
        FirebaseFirestore.instance.collection('users').doc(userId);
    await userDocRef.set(userDoc);

    // Delete the temporary app instance
    await app.delete();

    // Return the Firestore document reference
    return userDocRef;
  } catch (e) {
    print(
        'Error creating user with enum role and returning document reference: $e');
    return null; // Return null on failure
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
