// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessRegistrationRequestImpl _$$BusinessRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessRegistrationRequestImpl(
      ownerUserId: json['owner_user_id'] as String?,
      businessName: json['business_name'] as String,
      industry: json['industry'] as String,
      mobileNumber: json['mobile_number'] as String,
      emirate: json['emirate'] as String,
      website: json['website'] as String?,
      address: json['address'] as String?,
      logoUrl: json['logo_url'] as String?,
      contactEmail: json['contact_email'] as String,
    );

Map<String, dynamic> _$$BusinessRegistrationRequestImplToJson(
        _$BusinessRegistrationRequestImpl instance) =>
    <String, dynamic>{
      'owner_user_id': instance.ownerUserId,
      'business_name': instance.businessName,
      'industry': instance.industry,
      'mobile_number': instance.mobileNumber,
      'emirate': instance.emirate,
      'website': instance.website,
      'address': instance.address,
      'logo_url': instance.logoUrl,
      'contact_email': instance.contactEmail,
    };
