import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register.freezed.dart';
part 'user_register.g.dart';

@Freezed(toJson: true, fromJson: false)
class UserRegistration with _$UserRegistration {
  const factory UserRegistration({
    required String email,
    required String username,
    required String password,
  }) = _UserRegistration;
}
