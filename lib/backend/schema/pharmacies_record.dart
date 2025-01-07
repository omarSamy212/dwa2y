import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PharmaciesRecord extends FirestoreRecord {
  PharmaciesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "pharmacyAdmin" field.
  DocumentReference? _pharmacyAdmin;
  DocumentReference? get pharmacyAdmin => _pharmacyAdmin;
  bool hasPharmacyAdmin() => _pharmacyAdmin != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "linkedPatients" field.
  DocumentReference? _linkedPatients;
  DocumentReference? get linkedPatients => _linkedPatients;
  bool hasLinkedPatients() => _linkedPatients != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _pharmacyAdmin = snapshotData['pharmacyAdmin'] as DocumentReference?;
    _logo = snapshotData['logo'] as String?;
    _linkedPatients = snapshotData['linkedPatients'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pharmacies');

  static Stream<PharmaciesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PharmaciesRecord.fromSnapshot(s));

  static Future<PharmaciesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PharmaciesRecord.fromSnapshot(s));

  static PharmaciesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PharmaciesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PharmaciesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PharmaciesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PharmaciesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PharmaciesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPharmaciesRecordData({
  String? name,
  String? location,
  bool? isActive,
  DocumentReference? pharmacyAdmin,
  String? logo,
  DocumentReference? linkedPatients,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'isActive': isActive,
      'pharmacyAdmin': pharmacyAdmin,
      'logo': logo,
      'linkedPatients': linkedPatients,
    }.withoutNulls,
  );

  return firestoreData;
}

class PharmaciesRecordDocumentEquality implements Equality<PharmaciesRecord> {
  const PharmaciesRecordDocumentEquality();

  @override
  bool equals(PharmaciesRecord? e1, PharmaciesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.isActive == e2?.isActive &&
        e1?.pharmacyAdmin == e2?.pharmacyAdmin &&
        e1?.logo == e2?.logo &&
        e1?.linkedPatients == e2?.linkedPatients;
  }

  @override
  int hash(PharmaciesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.location,
        e?.isActive,
        e?.pharmacyAdmin,
        e?.logo,
        e?.linkedPatients
      ]);

  @override
  bool isValidKey(Object? o) => o is PharmaciesRecord;
}
