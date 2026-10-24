// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessImpl _$$BusinessImplFromJson(Map<String, dynamic> json) =>
    _$BusinessImpl(
      id: (json['id'] as num).toInt(),
      businessName: json['business_name'] as String,
      industry: json['industry'] as String,
      mobileNumber: json['mobile_number'] as String,
      emirate: json['emirate'] as String,
      website: json['website'] as String?,
      address: json['address'] as String?,
      logoUrl: json['logo_url'] as String?,
      contactEmail: json['contact_email'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$BusinessImplToJson(_$BusinessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_name': instance.businessName,
      'industry': instance.industry,
      'mobile_number': instance.mobileNumber,
      'emirate': instance.emirate,
      'website': instance.website,
      'address': instance.address,
      'logo_url': instance.logoUrl,
      'contact_email': instance.contactEmail,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
