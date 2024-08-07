import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:motocode_core/models/src/user.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    required String accessToken,
    required String? refreshToken,
    required DateTime expiresAt,
    required User user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
