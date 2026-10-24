// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberRegistrationRequest _$MemberRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _MemberRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$MemberRegistrationRequest {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profession => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_country_code')
  String get mobileCountryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_number')
  String get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_country_code')
  String get whatsappCountryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_number')
  String get whatsappNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_details')
  String? get additionalDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_of_residence')
  String get countryOfResidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_location')
  String? get currentLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'native_district')
  String get nativeDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'native_panchayat')
  String get nativePanchayat => throw _privateConstructorUsedError;
  @JsonKey(name: 'years_in_gulf')
  int get yearsInGulf => throw _privateConstructorUsedError;
  @JsonKey(name: 'attending_event')
  String get attendingEvent =>
      throw _privateConstructorUsedError; // 'YES', 'NO', 'MAYBE'
  @JsonKey(name: 'profile_picture_url')
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified')
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this MemberRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberRegistrationRequestCopyWith<MemberRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberRegistrationRequestCopyWith<$Res> {
  factory $MemberRegistrationRequestCopyWith(MemberRegistrationRequest value,
          $Res Function(MemberRegistrationRequest) then) =
      _$MemberRegistrationRequestCopyWithImpl<$Res, MemberRegistrationRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      String name,
      String profession,
      @JsonKey(name: 'mobile_country_code') String mobileCountryCode,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'whatsapp_country_code') String whatsappCountryCode,
      @JsonKey(name: 'whatsapp_number') String whatsappNumber,
      String email,
      @JsonKey(name: 'additional_details') String? additionalDetails,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'country_of_residence') String countryOfResidence,
      @JsonKey(name: 'current_location') String? currentLocation,
      @JsonKey(name: 'native_district') String nativeDistrict,
      @JsonKey(name: 'native_panchayat') String nativePanchayat,
      @JsonKey(name: 'years_in_gulf') int yearsInGulf,
      @JsonKey(name: 'attending_event') String attendingEvent,
      @JsonKey(name: 'profile_picture_url') String? profilePictureUrl,
      @JsonKey(name: 'is_verified') bool isVerified});
}

/// @nodoc
class _$MemberRegistrationRequestCopyWithImpl<$Res,
        $Val extends MemberRegistrationRequest>
    implements $MemberRegistrationRequestCopyWith<$Res> {
  _$MemberRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = null,
    Object? profession = null,
    Object? mobileCountryCode = null,
    Object? mobileNumber = null,
    Object? whatsappCountryCode = null,
    Object? whatsappNumber = null,
    Object? email = null,
    Object? additionalDetails = freezed,
    Object? companyName = freezed,
    Object? countryOfResidence = null,
    Object? currentLocation = freezed,
    Object? nativeDistrict = null,
    Object? nativePanchayat = null,
    Object? yearsInGulf = null,
    Object? attendingEvent = null,
    Object? profilePictureUrl = freezed,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      mobileCountryCode: null == mobileCountryCode
          ? _value.mobileCountryCode
          : mobileCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappCountryCode: null == whatsappCountryCode
          ? _value.whatsappCountryCode
          : whatsappCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappNumber: null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryOfResidence: null == countryOfResidence
          ? _value.countryOfResidence
          : countryOfResidence // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeDistrict: null == nativeDistrict
          ? _value.nativeDistrict
          : nativeDistrict // ignore: cast_nullable_to_non_nullable
              as String,
      nativePanchayat: null == nativePanchayat
          ? _value.nativePanchayat
          : nativePanchayat // ignore: cast_nullable_to_non_nullable
              as String,
      yearsInGulf: null == yearsInGulf
          ? _value.yearsInGulf
          : yearsInGulf // ignore: cast_nullable_to_non_nullable
              as int,
      attendingEvent: null == attendingEvent
          ? _value.attendingEvent
          : attendingEvent // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberRegistrationRequestImplCopyWith<$Res>
    implements $MemberRegistrationRequestCopyWith<$Res> {
  factory _$$MemberRegistrationRequestImplCopyWith(
          _$MemberRegistrationRequestImpl value,
          $Res Function(_$MemberRegistrationRequestImpl) then) =
      __$$MemberRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      String name,
      String profession,
      @JsonKey(name: 'mobile_country_code') String mobileCountryCode,
      @JsonKey(name: 'mobile_number') String mobileNumber,
      @JsonKey(name: 'whatsapp_country_code') String whatsappCountryCode,
      @JsonKey(name: 'whatsapp_number') String whatsappNumber,
      String email,
      @JsonKey(name: 'additional_details') String? additionalDetails,
      @JsonKey(name: 'company_name') String? companyName,
      @JsonKey(name: 'country_of_residence') String countryOfResidence,
      @JsonKey(name: 'current_location') String? currentLocation,
      @JsonKey(name: 'native_district') String nativeDistrict,
      @JsonKey(name: 'native_panchayat') String nativePanchayat,
      @JsonKey(name: 'years_in_gulf') int yearsInGulf,
      @JsonKey(name: 'attending_event') String attendingEvent,
      @JsonKey(name: 'profile_picture_url') String? profilePictureUrl,
      @JsonKey(name: 'is_verified') bool isVerified});
}

/// @nodoc
class __$$MemberRegistrationRequestImplCopyWithImpl<$Res>
    extends _$MemberRegistrationRequestCopyWithImpl<$Res,
        _$MemberRegistrationRequestImpl>
    implements _$$MemberRegistrationRequestImplCopyWith<$Res> {
  __$$MemberRegistrationRequestImplCopyWithImpl(
      _$MemberRegistrationRequestImpl _value,
      $Res Function(_$MemberRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = null,
    Object? profession = null,
    Object? mobileCountryCode = null,
    Object? mobileNumber = null,
    Object? whatsappCountryCode = null,
    Object? whatsappNumber = null,
    Object? email = null,
    Object? additionalDetails = freezed,
    Object? companyName = freezed,
    Object? countryOfResidence = null,
    Object? currentLocation = freezed,
    Object? nativeDistrict = null,
    Object? nativePanchayat = null,
    Object? yearsInGulf = null,
    Object? attendingEvent = null,
    Object? profilePictureUrl = freezed,
    Object? isVerified = null,
  }) {
    return _then(_$MemberRegistrationRequestImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      mobileCountryCode: null == mobileCountryCode
          ? _value.mobileCountryCode
          : mobileCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappCountryCode: null == whatsappCountryCode
          ? _value.whatsappCountryCode
          : whatsappCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappNumber: null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      countryOfResidence: null == countryOfResidence
          ? _value.countryOfResidence
          : countryOfResidence // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      nativeDistrict: null == nativeDistrict
          ? _value.nativeDistrict
          : nativeDistrict // ignore: cast_nullable_to_non_nullable
              as String,
      nativePanchayat: null == nativePanchayat
          ? _value.nativePanchayat
          : nativePanchayat // ignore: cast_nullable_to_non_nullable
              as String,
      yearsInGulf: null == yearsInGulf
          ? _value.yearsInGulf
          : yearsInGulf // ignore: cast_nullable_to_non_nullable
              as int,
      attendingEvent: null == attendingEvent
          ? _value.attendingEvent
          : attendingEvent // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberRegistrationRequestImpl implements _MemberRegistrationRequest {
  const _$MemberRegistrationRequestImpl(
      {@JsonKey(name: 'user_id') this.userId,
      required this.name,
      required this.profession,
      @JsonKey(name: 'mobile_country_code') required this.mobileCountryCode,
      @JsonKey(name: 'mobile_number') required this.mobileNumber,
      @JsonKey(name: 'whatsapp_country_code') required this.whatsappCountryCode,
      @JsonKey(name: 'whatsapp_number') required this.whatsappNumber,
      required this.email,
      @JsonKey(name: 'additional_details') this.additionalDetails,
      @JsonKey(name: 'company_name') this.companyName,
      @JsonKey(name: 'country_of_residence') required this.countryOfResidence,
      @JsonKey(name: 'current_location') this.currentLocation,
      @JsonKey(name: 'native_district') required this.nativeDistrict,
      @JsonKey(name: 'native_panchayat') required this.nativePanchayat,
      @JsonKey(name: 'years_in_gulf') required this.yearsInGulf,
      @JsonKey(name: 'attending_event') required this.attendingEvent,
      @JsonKey(name: 'profile_picture_url') this.profilePictureUrl,
      @JsonKey(name: 'is_verified') this.isVerified = false});

  factory _$MemberRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberRegistrationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final String name;
  @override
  final String profession;
  @override
  @JsonKey(name: 'mobile_country_code')
  final String mobileCountryCode;
  @override
  @JsonKey(name: 'mobile_number')
  final String mobileNumber;
  @override
  @JsonKey(name: 'whatsapp_country_code')
  final String whatsappCountryCode;
  @override
  @JsonKey(name: 'whatsapp_number')
  final String whatsappNumber;
  @override
  final String email;
  @override
  @JsonKey(name: 'additional_details')
  final String? additionalDetails;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'country_of_residence')
  final String countryOfResidence;
  @override
  @JsonKey(name: 'current_location')
  final String? currentLocation;
  @override
  @JsonKey(name: 'native_district')
  final String nativeDistrict;
  @override
  @JsonKey(name: 'native_panchayat')
  final String nativePanchayat;
  @override
  @JsonKey(name: 'years_in_gulf')
  final int yearsInGulf;
  @override
  @JsonKey(name: 'attending_event')
  final String attendingEvent;
// 'YES', 'NO', 'MAYBE'
  @override
  @JsonKey(name: 'profile_picture_url')
  final String? profilePictureUrl;
  @override
  @JsonKey(name: 'is_verified')
  final bool isVerified;

  @override
  String toString() {
    return 'MemberRegistrationRequest(userId: $userId, name: $name, profession: $profession, mobileCountryCode: $mobileCountryCode, mobileNumber: $mobileNumber, whatsappCountryCode: $whatsappCountryCode, whatsappNumber: $whatsappNumber, email: $email, additionalDetails: $additionalDetails, companyName: $companyName, countryOfResidence: $countryOfResidence, currentLocation: $currentLocation, nativeDistrict: $nativeDistrict, nativePanchayat: $nativePanchayat, yearsInGulf: $yearsInGulf, attendingEvent: $attendingEvent, profilePictureUrl: $profilePictureUrl, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberRegistrationRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.mobileCountryCode, mobileCountryCode) ||
                other.mobileCountryCode == mobileCountryCode) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.whatsappCountryCode, whatsappCountryCode) ||
                other.whatsappCountryCode == whatsappCountryCode) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.additionalDetails, additionalDetails) ||
                other.additionalDetails == additionalDetails) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.countryOfResidence, countryOfResidence) ||
                other.countryOfResidence == countryOfResidence) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.nativeDistrict, nativeDistrict) ||
                other.nativeDistrict == nativeDistrict) &&
            (identical(other.nativePanchayat, nativePanchayat) ||
                other.nativePanchayat == nativePanchayat) &&
            (identical(other.yearsInGulf, yearsInGulf) ||
                other.yearsInGulf == yearsInGulf) &&
            (identical(other.attendingEvent, attendingEvent) ||
                other.attendingEvent == attendingEvent) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      name,
      profession,
      mobileCountryCode,
      mobileNumber,
      whatsappCountryCode,
      whatsappNumber,
      email,
      additionalDetails,
      companyName,
      countryOfResidence,
      currentLocation,
      nativeDistrict,
      nativePanchayat,
      yearsInGulf,
      attendingEvent,
      profilePictureUrl,
      isVerified);

  /// Create a copy of MemberRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberRegistrationRequestImplCopyWith<_$MemberRegistrationRequestImpl>
      get copyWith => __$$MemberRegistrationRequestImplCopyWithImpl<
          _$MemberRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _MemberRegistrationRequest implements MemberRegistrationRequest {
  const factory _MemberRegistrationRequest(
      {@JsonKey(name: 'user_id') final String? userId,
      required final String name,
      required final String profession,
      @JsonKey(name: 'mobile_country_code')
      required final String mobileCountryCode,
      @JsonKey(name: 'mobile_number') required final String mobileNumber,
      @JsonKey(name: 'whatsapp_country_code')
      required final String whatsappCountryCode,
      @JsonKey(name: 'whatsapp_number') required final String whatsappNumber,
      required final String email,
      @JsonKey(name: 'additional_details') final String? additionalDetails,
      @JsonKey(name: 'company_name') final String? companyName,
      @JsonKey(name: 'country_of_residence')
      required final String countryOfResidence,
      @JsonKey(name: 'current_location') final String? currentLocation,
      @JsonKey(name: 'native_district') required final String nativeDistrict,
      @JsonKey(name: 'native_panchayat') required final String nativePanchayat,
      @JsonKey(name: 'years_in_gulf') required final int yearsInGulf,
      @JsonKey(name: 'attending_event') required final String attendingEvent,
      @JsonKey(name: 'profile_picture_url') final String? profilePictureUrl,
      @JsonKey(name: 'is_verified')
      final bool isVerified}) = _$MemberRegistrationRequestImpl;

  factory _MemberRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$MemberRegistrationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  String get name;
  @override
  String get profession;
  @override
  @JsonKey(name: 'mobile_country_code')
  String get mobileCountryCode;
  @override
  @JsonKey(name: 'mobile_number')
  String get mobileNumber;
  @override
  @JsonKey(name: 'whatsapp_country_code')
  String get whatsappCountryCode;
  @override
  @JsonKey(name: 'whatsapp_number')
  String get whatsappNumber;
  @override
  String get email;
  @override
  @JsonKey(name: 'additional_details')
  String? get additionalDetails;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'country_of_residence')
  String get countryOfResidence;
  @override
  @JsonKey(name: 'current_location')
  String? get currentLocation;
  @override
  @JsonKey(name: 'native_district')
  String get nativeDistrict;
  @override
  @JsonKey(name: 'native_panchayat')
  String get nativePanchayat;
  @override
  @JsonKey(name: 'years_in_gulf')
  int get yearsInGulf;
  @override
  @JsonKey(name: 'attending_event')
  String get attendingEvent; // 'YES', 'NO', 'MAYBE'
  @override
  @JsonKey(name: 'profile_picture_url')
  String? get profilePictureUrl;
  @override
  @JsonKey(name: 'is_verified')
  bool get isVerified;

  /// Create a copy of MemberRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberRegistrationRequestImplCopyWith<_$MemberRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
