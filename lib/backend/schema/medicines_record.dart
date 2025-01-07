import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicinesRecord extends FirestoreRecord {
  MedicinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "dosagePerDay" field.
  int? _dosagePerDay;
  int get dosagePerDay => _dosagePerDay ?? 0;
  bool hasDosagePerDay() => _dosagePerDay != null;

  // "dosageTimes" field.
  List<DateTime>? _dosageTimes;
  List<DateTime> get dosageTimes => _dosageTimes ?? const [];
  bool hasDosageTimes() => _dosageTimes != null;

  // "availableStock" field.
  int? _availableStock;
  int get availableStock => _availableStock ?? 0;
  bool hasAvailableStock() => _availableStock != null;

  // "patient" field.
  DocumentReference? _patient;
  DocumentReference? get patient => _patient;
  bool hasPatient() => _patient != null;

  // "pharmacy" field.
  DocumentReference? _pharmacy;
  DocumentReference? get pharmacy => _pharmacy;
  bool hasPharmacy() => _pharmacy != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _dosagePerDay = castToType<int>(snapshotData['dosagePerDay']);
    _dosageTimes = getDataList(snapshotData['dosageTimes']);
    _availableStock = castToType<int>(snapshotData['availableStock']);
    _patient = snapshotData['patient'] as DocumentReference?;
    _pharmacy = snapshotData['pharmacy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Medicines');

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
  String? name,
  int? dosagePerDay,
  int? availableStock,
  DocumentReference? patient,
  DocumentReference? pharmacy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'dosagePerDay': dosagePerDay,
      'availableStock': availableStock,
      'patient': patient,
      'pharmacy': pharmacy,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicinesRecordDocumentEquality implements Equality<MedicinesRecord> {
  const MedicinesRecordDocumentEquality();

  @override
  bool equals(MedicinesRecord? e1, MedicinesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.dosagePerDay == e2?.dosagePerDay &&
        listEquality.equals(e1?.dosageTimes, e2?.dosageTimes) &&
        e1?.availableStock == e2?.availableStock &&
        e1?.patient == e2?.patient &&
        e1?.pharmacy == e2?.pharmacy;
  }

  @override
  int hash(MedicinesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.dosagePerDay,
        e?.dosageTimes,
        e?.availableStock,
        e?.patient,
        e?.pharmacy
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicinesRecord;
}
