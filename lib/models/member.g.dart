// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      profession: json['profession'] as String,
      mobileCountryCode: json['mobile_country_code'] as String,
      mobileNumber: json['mobile_number'] as String,
      whatsappCountryCode: json['whatsapp_country_code'] as String?,
      whatsappNumber: json['whatsapp_number'] as String?,
      email: json['email'] as String,
      additionalDetails: json['additional_details'] as String?,
      companyName: json['company_name'] as String?,
      countryOfResidence: json['country_of_residence'] as String,
      currentLocation: json['current_location'] as String?,
      nativeDistrict: json['native_district'] as String,
      nativePanchayat: json['native_panchayat'] as String?,
      yearsInGulf: (json['years_in_gulf'] as num?)?.toInt(),
      attendingEvent: json['attending_event'] as bool,
      profilePictureUrl: json['profile_picture_url'] as String?,
      isVerified: json['is_verified'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
