import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanTokenBalanceModel with EquatableMixin {
  final String status;
  final String message;
  final String result;
  BscScanTokenBalanceModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanTokenBalanceModel copyWith({
    String? status,
    String? message,
    String? result,
  }) {
    return BscScanTokenBalanceModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result,
    };
  }

  factory BscScanTokenBalanceModel.fromMap(Map<String, dynamic> map) {
    return BscScanTokenBalanceModel(
      status: map['status'],
      message: map['message'],
      result: map['result'],
    );
  }

  factory BscScanTokenBalanceModel.empty() {
    return BscScanTokenBalanceModel(
      status: 'empty',
      message: '',
      result: '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTokenBalanceModel.fromJson(String source) =>
      BscScanTokenBalanceModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}
