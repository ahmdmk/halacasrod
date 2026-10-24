import 'package:freezed_annotation/freezed_annotation.dart';

part 'business.freezed.dart';
part 'business.g.dart';

@freezed
class Business with _$Business {
  const factory Business({
    required int id,
    @JsonKey(name: 'business_name') required String businessName,
    required String industry,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    required String emirate,
    String? website,
    String? address,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'contact_email') String? contactEmail,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) => _$BusinessFromJson(json);
}