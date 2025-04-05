import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is Timestamp) {
      return json.toDate();
    } else if (json is String) {
      return DateTime.parse(json);
    } else if (json is int) {
      return DateTime.fromMillisecondsSinceEpoch(json);
    } else {
      throw Exception('Invalid format for DateTime field');
    }
  }

  @override
  dynamic toJson(DateTime date) => Timestamp.fromDate(date);
}
