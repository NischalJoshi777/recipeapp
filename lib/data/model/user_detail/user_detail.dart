import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myrecipeapp/data/data_source/timestamp_converted.dart';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

@freezed
class UserDetail with _$UserDetail {
  const factory UserDetail({
    required String email,
    String? photoUrl,
    required String username,
    @TimestampConverter() required DateTime createdAt,
  }) = _UserDetail;

  factory UserDetail.fromJson(Map<String, dynamic> json) =>
      _$UserDetailFromJson(json);
}
