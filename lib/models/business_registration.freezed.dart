// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessRegistrationRequest _$BusinessRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _BusinessRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$BusinessRegistrationRequest {
  @JsonKey(name: 'owner_user_id')
  String? get ownerUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_name')
  String get businessName => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  String get emirate => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_email')
  String get contactEmail => throw _privateConstructorUsedError;

  /// Serializes this BusinessRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessRegistrationRequestCopyWith<BusinessRegistrationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessRegistrationRequestCopyWith<$Res> {
  factory $BusinessRegistrationRequestCopyWith(
          BusinessRegistrationRequest value,
          $Res Function(BusinessRegistrationRequest) then) =
      _$BusinessRegistrationRequestCopyWithImpl<$Res,
          BusinessRegistrationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_user_id') String? ownerUserId,
      @JsonKey(name: 'business_name') String businessName,
      String industry,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      String emirate,
      String? website,
      String? address,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'contact_email') String contactEmail});
}

/// @nodoc
class _$BusinessRegistrationRequestCopyWithImpl<$Res,
        $Val extends BusinessRegistrationRequest>
    implements $BusinessRegistrationRequestCopyWith<$Res> {
  _$BusinessRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerUserId = freezed,
    Object? businessName = null,
    Object? industry = null,
    Object? mobileNumber = null,
    Object? emirate = null,
    Object? website = freezed,
    Object? address = freezed,
    Object? logoUrl = freezed,
    Object? contactEmail = null,
  }) {
    return _then(_value.copyWith(
      ownerUserId: freezed == ownerUserId
          ? _value.ownerUserId
          : ownerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emirate: null == emirate
          ? _value.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessRegistrationRequestImplCopyWith<$Res>
    implements $BusinessRegistrationRequestCopyWith<$Res> {
  factory _$$BusinessRegistrationRequestImplCopyWith(
          _$BusinessRegistrationRequestImpl value,
          $Res Function(_$BusinessRegistrationRequestImpl) then) =
      __$$BusinessRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_user_id') String? ownerUserId,
      @JsonKey(name: 'business_name') String businessName,
      String industry,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      String emirate,
      String? website,
      String? address,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'contact_email') String contactEmail});
}

/// @nodoc
class __$$BusinessRegistrationRequestImplCopyWithImpl<$Res>
    extends _$BusinessRegistrationRequestCopyWithImpl<$Res,
        _$BusinessRegistrationRequestImpl>
    implements _$$BusinessRegistrationRequestImplCopyWith<$Res> {
  __$$BusinessRegistrationRequestImplCopyWithImpl(
      _$BusinessRegistrationRequestImpl _value,
      $Res Function(_$BusinessRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerUserId = freezed,
    Object? businessName = null,
    Object? industry = null,
    Object? mobileNumber = null,
    Object? emirate = null,
    Object? website = freezed,
    Object? address = freezed,
    Object? logoUrl = freezed,
    Object? contactEmail = null,
  }) {
    return _then(_$BusinessRegistrationRequestImpl(
      ownerUserId: freezed == ownerUserId
          ? _value.ownerUserId
          : ownerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emirate: null == emirate
          ? _value.emirate
          : emirate // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: null == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessRegistrationRequestImpl
    implements _BusinessRegistrationRequest {
  const _$BusinessRegistrationRequestImpl(
      {@JsonKey(name: 'owner_user_id') this.ownerUserId,
      @JsonKey(name: 'business_name') required this.businessName,
      required this.industry,
      @JsonKey(name: 'mobile_number') required this.mobileNumber,
      required this.emirate,
      this.website,
      this.address,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'contact_email') required this.contactEmail});

  factory _$BusinessRegistrationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessRegistrationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'owner_user_id')
  final String? ownerUserId;
  @override
  @JsonKey(name: 'business_name')
  final String businessName;
  @override
  final String industry;
  @override
  @JsonKey(name: 'mobile_number')
  final String mobileNumber;
  @override
  final String emirate;
  @override
  final String? website;
  @override
  final String? address;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'contact_email')
  final String contactEmail;

  @override
  String toString() {
    return 'BusinessRegistrationRequest(ownerUserId: $ownerUserId, businessName: $businessName, industry: $industry, mobileNumber: $mobileNumber, emirate: $emirate, website: $website, address: $address, logoUrl: $logoUrl, contactEmail: $contactEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessRegistrationRequestImpl &&
            (identical(other.ownerUserId, ownerUserId) ||
                other.ownerUserId == ownerUserId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.emirate, emirate) || other.emirate == emirate) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ownerUserId, businessName,
      industry, mobileNumber, emirate, website, address, logoUrl, contactEmail);

  /// Create a copy of BusinessRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessRegistrationRequestImplCopyWith<_$BusinessRegistrationRequestImpl>
      get copyWith => __$$BusinessRegistrationRequestImplCopyWithImpl<
          _$BusinessRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _BusinessRegistrationRequest
    implements BusinessRegistrationRequest {
  const factory _BusinessRegistrationRequest(
          {@JsonKey(name: 'owner_user_id') final String? ownerUserId,
          @JsonKey(name: 'business_name') required final String businessName,
          required final String industry,
          @JsonKey(name: 'mobile_number') required final String mobileNumber,
          required final String emirate,
          final String? website,
          final String? address,
          @JsonKey(name: 'logo_url') final String? logoUrl,
          @JsonKey(name: 'contact_email') required final String contactEmail}) =
      _$BusinessRegistrationRequestImpl;

  factory _BusinessRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$BusinessRegistrationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'owner_user_id')
  String? get ownerUserId;
  @override
  @JsonKey(name: 'business_name')
  String get businessName;
  @override
  String get industry;
  @override
  @JsonKey(name: 'mobile_number')
  String get mobileNumber;
  @override
  String get emirate;
  @override
  String? get website;
  @override
  String? get address;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'contact_email')
  String get contactEmail;

  /// Create a copy of BusinessRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessRegistrationRequestImplCopyWith<_$BusinessRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
