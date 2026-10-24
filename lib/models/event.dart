import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'start_datetime') required DateTime startDatetime,
    @JsonKey(name: 'end_datetime') required DateTime endDatetime,
    required String location,
    int? capacity,
    @JsonKey(name: 'registration_required') @Default(false) bool registrationRequired,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}