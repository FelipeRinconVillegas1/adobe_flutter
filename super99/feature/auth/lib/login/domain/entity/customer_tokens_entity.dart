import 'package:equatable/equatable.dart';

class CustomerTokensEntity extends Equatable {
  final String token;
  final String? refreshToken;

  const CustomerTokensEntity({required this.token, this.refreshToken});

  CustomerTokensEntity copyWith({
    String? token,
    String? refreshToken,
  }) {
    return CustomerTokensEntity(
        token: token ?? this.token, refreshToken: refreshToken ?? this.refreshToken);
  }

  @override
  List<Object?> get props => [token, refreshToken];
}