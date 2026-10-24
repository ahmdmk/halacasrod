import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_registration.freezed.dart';
part 'member_registration.g.dart';

@freezed
class MemberRegistrationRequest with _$MemberRegistrationRequest {
  const factory MemberRegistrationRequest({
    @JsonKey(name: 'user_id') String? userId,
    required String name,
    required String profession,
    @JsonKey(name: 'mobile_country_code') required String mobileCountryCode,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(name: 'whatsapp_country_code') required String whatsappCountryCode,
    @JsonKey(name: 'whatsapp_number') required String whatsappNumber,
    required String email,
    @JsonKey(name: 'additional_details') String? additionalDetails,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'country_of_residence') required String countryOfResidence,
    @JsonKey(name: 'current_location') String? currentLocation,
    @JsonKey(name: 'native_district') required String nativeDistrict,
    @JsonKey(name: 'native_panchayat') required String nativePanchayat,
    @JsonKey(name: 'years_in_gulf') required int yearsInGulf,
    @JsonKey(name: 'attending_event') required String attendingEvent, // 'YES', 'NO', 'MAYBE'
    @JsonKey(name: 'profile_picture_url') String? profilePictureUrl,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
  }) = _MemberRegistrationRequest;

  factory MemberRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$MemberRegistrationRequestFromJson(json);
}