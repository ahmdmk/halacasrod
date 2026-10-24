import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor.freezed.dart';
part 'sponsor.g.dart';

@freezed
class Sponsor with _$Sponsor {
  const factory Sponsor({
    required int id,
    required String name,
    @JsonKey(name: 'logo_url') String? logoUrl,
    String? website,
    @JsonKey(name: 'sort_order') @Default(0) int sortOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Sponsor;

  factory Sponsor.fromJson(Map<String, dynamic> json) => _$SponsorFromJson(json);
}