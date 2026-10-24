import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    required String name,
    required String profession,
    @JsonKey(name: 'mobile_country_code') required String mobileCountryCode,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(name: 'whatsapp_country_code') String? whatsappCountryCode,
    @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
    required String email,
    @JsonKey(name: 'additional_details') String? additionalDetails,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'country_of_residence') required String countryOfResidence,
    @JsonKey(name: 'current_location') String? currentLocation,
    @JsonKey(name: 'native_district') required String nativeDistrict,
    @JsonKey(name: 'native_panchayat') String? nativePanchayat,
    @JsonKey(name: 'years_in_gulf') int? yearsInGulf,
    @JsonKey(name: 'attending_event') required bool attendingEvent,
    @JsonKey(name: 'profile_picture_url') String? profilePictureUrl,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}