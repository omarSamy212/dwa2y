import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "patientRef" field.
  DocumentReference? _patientRef;
  DocumentReference? get patientRef => _patientRef;
  bool hasPatientRef() => _patientRef != null;

  // "medicineRef" field.
  DocumentReference? _medicineRef;
  DocumentReference? get medicineRef => _medicineRef;
  bool hasMedicineRef() => _medicineRef != null;

  // "type" field.
  ReminderType? _type;
  ReminderType? get type => _type;
  bool hasType() => _type != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "scheduledAt" field.
  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _scheduledAt;
  bool hasScheduledAt() => _scheduledAt != null;

  // "sentAt" field.
  DateTime? _sentAt;
  DateTime? get sentAt => _sentAt;
  bool hasSentAt() => _sentAt != null;

  // "isSent" field.
  bool? _isSent;
  bool get isSent => _isSent ?? false;
  bool hasIsSent() => _isSent != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _patientRef = snapshotData['patientRef'] as DocumentReference?;
    _medicineRef = snapshotData['medicineRef'] as DocumentReference?;
    _type = snapshotData['type'] is ReminderType
        ? snapshotData['type']
        : deserializeEnum<ReminderType>(snapshotData['type']);
    _message = snapshotData['message'] as String?;
    _scheduledAt = snapshotData['scheduledAt'] as DateTime?;
    _sentAt = snapshotData['sentAt'] as DateTime?;
    _isSent = snapshotData['isSent'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  DocumentReference? patientRef,
  DocumentReference? medicineRef,
  ReminderType? type,
  String? message,
  DateTime? scheduledAt,
  DateTime? sentAt,
  bool? isSent,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'patientRef': patientRef,
      'medicineRef': medicineRef,
      'type': type,
      'message': message,
      'scheduledAt': scheduledAt,
      'sentAt': sentAt,
      'isSent': isSent,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.patientRef == e2?.patientRef &&
        e1?.medicineRef == e2?.medicineRef &&
        e1?.type == e2?.type &&
        e1?.message == e2?.message &&
        e1?.scheduledAt == e2?.scheduledAt &&
        e1?.sentAt == e2?.sentAt &&
        e1?.isSent == e2?.isSent &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.patientRef,
        e?.medicineRef,
        e?.type,
        e?.message,
        e?.scheduledAt,
        e?.sentAt,
        e?.isSent,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
