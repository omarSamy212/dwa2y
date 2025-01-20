import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientsRecord extends FirestoreRecord {
  PatientsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "linkedPharmacies" field.
  List<DocumentReference>? _linkedPharmacies;
  List<DocumentReference> get linkedPharmacies => _linkedPharmacies ?? const [];
  bool hasLinkedPharmacies() => _linkedPharmacies != null;

  // "midicineList" field.
  List<DocumentReference>? _midicineList;
  List<DocumentReference> get midicineList => _midicineList ?? const [];
  bool hasMidicineList() => _midicineList != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _notes = snapshotData['notes'] as String?;
    _linkedPharmacies = getDataList(snapshotData['linkedPharmacies']);
    _midicineList = getDataList(snapshotData['midicineList']);
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
  DocumentReference? userRef,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone': phone,
      'userRef': userRef,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientsRecordDocumentEquality implements Equality<PatientsRecord> {
  const PatientsRecordDocumentEquality();

  @override
  bool equals(PatientsRecord? e1, PatientsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.userRef == e2?.userRef &&
        e1?.notes == e2?.notes &&
        listEquality.equals(e1?.linkedPharmacies, e2?.linkedPharmacies) &&
        listEquality.equals(e1?.midicineList, e2?.midicineList);
  }

  @override
  int hash(PatientsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.phone,
        e?.userRef,
        e?.notes,
        e?.linkedPharmacies,
        e?.midicineList
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientsRecord;
}
