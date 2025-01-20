import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicinesRecord extends FirestoreRecord {
  MedicinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "patientRef" field.
  DocumentReference? _patientRef;
  DocumentReference? get patientRef => _patientRef;
  bool hasPatientRef() => _patientRef != null;

  // "pharmacyAdminRef" field.
  DocumentReference? _pharmacyAdminRef;
  DocumentReference? get pharmacyAdminRef => _pharmacyAdminRef;
  bool hasPharmacyAdminRef() => _pharmacyAdminRef != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "boxColor" field.
  String? _boxColor;
  String get boxColor => _boxColor ?? '';
  bool hasBoxColor() => _boxColor != null;

  // "pillColor" field.
  String? _pillColor;
  String get pillColor => _pillColor ?? '';
  bool hasPillColor() => _pillColor != null;

  // "totalPills" field.
  int? _totalPills;
  int get totalPills => _totalPills ?? 0;
  bool hasTotalPills() => _totalPills != null;

  // "remainingPills" field.
  int? _remainingPills;
  int get remainingPills => _remainingPills ?? 0;
  bool hasRemainingPills() => _remainingPills != null;

  // "dosagePerDay" field.
  int? _dosagePerDay;
  int get dosagePerDay => _dosagePerDay ?? 0;
  bool hasDosagePerDay() => _dosagePerDay != null;

  // "pillsPerDose" field.
  int? _pillsPerDose;
  int get pillsPerDose => _pillsPerDose ?? 0;
  bool hasPillsPerDose() => _pillsPerDose != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "schedule" field.
  List<ScheduleStruct>? _schedule;
  List<ScheduleStruct> get schedule => _schedule ?? const [];
  bool hasSchedule() => _schedule != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _patientRef = snapshotData['patientRef'] as DocumentReference?;
    _pharmacyAdminRef = snapshotData['pharmacyAdminRef'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _boxColor = snapshotData['boxColor'] as String?;
    _pillColor = snapshotData['pillColor'] as String?;
    _totalPills = castToType<int>(snapshotData['totalPills']);
    _remainingPills = castToType<int>(snapshotData['remainingPills']);
    _dosagePerDay = castToType<int>(snapshotData['dosagePerDay']);
    _pillsPerDose = castToType<int>(snapshotData['pillsPerDose']);
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
    _schedule = getStructList(
      snapshotData['schedule'],
      ScheduleStruct.fromMap,
    );
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicines');

  static Stream<MedicinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicinesRecord.fromSnapshot(s));

  static Future<MedicinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicinesRecord.fromSnapshot(s));

  static MedicinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicinesRecordData({
  DocumentReference? patientRef,
  DocumentReference? pharmacyAdminRef,
  String? name,
  String? boxColor,
  String? pillColor,
  int? totalPills,
  int? remainingPills,
  int? dosagePerDay,
  int? pillsPerDose,
  DateTime? updatedAt,
  DateTime? createdAt,
  String? notes,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patientRef': patientRef,
      'pharmacyAdminRef': pharmacyAdminRef,
      'name': name,
      'boxColor': boxColor,
      'pillColor': pillColor,
      'totalPills': totalPills,
      'remainingPills': remainingPills,
      'dosagePerDay': dosagePerDay,
      'pillsPerDose': pillsPerDose,
      'updatedAt': updatedAt,
      'createdAt': createdAt,
      'notes': notes,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicinesRecordDocumentEquality implements Equality<MedicinesRecord> {
  const MedicinesRecordDocumentEquality();

  @override
  bool equals(MedicinesRecord? e1, MedicinesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.patientRef == e2?.patientRef &&
        e1?.pharmacyAdminRef == e2?.pharmacyAdminRef &&
        e1?.name == e2?.name &&
        e1?.boxColor == e2?.boxColor &&
        e1?.pillColor == e2?.pillColor &&
        e1?.totalPills == e2?.totalPills &&
        e1?.remainingPills == e2?.remainingPills &&
        e1?.dosagePerDay == e2?.dosagePerDay &&
        e1?.pillsPerDose == e2?.pillsPerDose &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.createdAt == e2?.createdAt &&
        e1?.notes == e2?.notes &&
        listEquality.equals(e1?.schedule, e2?.schedule) &&
        e1?.type == e2?.type;
  }

  @override
  int hash(MedicinesRecord? e) => const ListEquality().hash([
        e?.patientRef,
        e?.pharmacyAdminRef,
        e?.name,
        e?.boxColor,
        e?.pillColor,
        e?.totalPills,
        e?.remainingPills,
        e?.dosagePerDay,
        e?.pillsPerDose,
        e?.updatedAt,
        e?.createdAt,
        e?.notes,
        e?.schedule,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicinesRecord;
}
