import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String message,
    @JsonKey(name: 'error_code') String? errorCode,
    int? statusCode,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);
}

@freezed
class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    required int total,
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'has_next') required bool hasNext,
    @JsonKey(name: 'has_prev') required bool hasPrev,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) => _$PaginationMetaFromJson(json);
}