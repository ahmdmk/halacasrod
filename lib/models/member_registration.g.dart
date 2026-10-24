// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberRegistrationRequestImpl _$$MemberRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberRegistrationRequestImpl(
      userId: json['user_id'] as String?,
      name: json['name'] as String,
      profession: json['profession'] as String,
      mobileCountryCode: json['mobile_country_code'] as String,
      mobileNumber: json['mobile_number'] as String,
      whatsappCountryCode: json['whatsapp_country_code'] as String,
      whatsappNumber: json['whatsapp_number'] as String,
      email: json['email'] as String,
      additionalDetails: json['additional_details'] as String?,
      companyName: json['company_name'] as String?,
      countryOfResidence: json['country_of_residence'] as String,
      currentLocation: json['current_location'] as String?,
      nativeDistrict: json['native_district'] as String,
      nativePanchayat: json['native_panchayat'] as String,
      yearsInGulf: (json['years_in_gulf'] as num).toInt(),
      attendingEvent: json['attending_event'] as String,
      profilePictureUrl: json['profile_picture_url'] as String?,
      isVerified: json['is_verified'] as bool? ?? false,
    );

Map<String, dynamic> _$$MemberRegistrationRequestImplToJson(
        _$MemberRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'profession': instance.profession,
      'mobile_country_code': instance.mobileCountryCode,
      'mobile_number': instance.mobileNumber,
      'whatsapp_country_code': instance.whatsappCountryCode,
      'whatsapp_number': instance.whatsappNumber,
      'email': instance.email,
      'additional_details': instance.additionalDetails,
      'company_name': instance.companyName,
      'country_of_residence': instance.countryOfResidence,
      'current_location': instance.currentLocation,
      'native_district': instance.nativeDistrict,
      'native_panchayat': instance.nativePanchayat,
      'years_in_gulf': instance.yearsInGulf,
      'attending_event': instance.attendingEvent,
      'profile_picture_url': instance.profilePictureUrl,
      'is_verified': instance.isVerified,
    };
