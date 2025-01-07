import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientsRecord extends FirestoreRecord {
  PatientsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "linkedPharmacies" field.
  List<DocumentReference>? _linkedPharmacies;
  List<DocumentReference> get linkedPharmacies => _linkedPharmacies ?? const [];
  bool hasLinkedPharmacies() => _linkedPharmacies != null;

  // "medicineList" field.
  List<DocumentReference>? _medicineList;
  List<DocumentReference> get medicineList => _medicineList ?? const [];
  bool hasMedicineList() => _medicineList != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  void _initializeFields() {
    _linkedPharmacies = getDataList(snapshotData['linkedPharmacies']);
    _medicineList = getDataList(snapshotData['medicineList']);
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Patients');

  static Stream<PatientsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientsRecord.fromSnapshot(s));

  static Future<PatientsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PatientsRecord.fromSnapshot(s));

  static PatientsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientsRecordData({
  String? name,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientsRecordDocumentEquality implements Equality<PatientsRecord> {
  const PatientsRecordDocumentEquality();

  @override
  bool equals(PatientsRecord? e1, PatientsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.linkedPharmacies, e2?.linkedPharmacies) &&
        listEquality.equals(e1?.medicineList, e2?.medicineList) &&
        e1?.name == e2?.name &&
        e1?.phone == e2?.phone;
  }

  @override
  int hash(PatientsRecord? e) => const ListEquality()
      .hash([e?.linkedPharmacies, e?.medicineList, e?.name, e?.phone]);

  @override
  bool isValidKey(Object? o) => o is PatientsRecord;
}
