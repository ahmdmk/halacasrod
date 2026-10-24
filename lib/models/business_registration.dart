import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_registration.freezed.dart';
part 'business_registration.g.dart';

@freezed
class BusinessRegistrationRequest with _$BusinessRegistrationRequest {
  const factory BusinessRegistrationRequest({
    @JsonKey(name: 'owner_user_id') String? ownerUserId,
    @JsonKey(name: 'business_name') required String businessName,
    required String industry,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    required String emirate,
    String? website,
    String? address,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'contact_email') required String contactEmail,
  }) = _BusinessRegistrationRequest;

  factory BusinessRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$BusinessRegistrationRequestFromJson(json);
}