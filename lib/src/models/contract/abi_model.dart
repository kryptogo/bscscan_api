import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanAbiModel with EquatableMixin {
  final String status;
  final String message;
  final String result;

  BscScanAbiModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanAbiModel copyWith({
    String? status,
    String? message,
    String? result,
  }) {
    return BscScanAbiModel(
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

  factory BscScanAbiModel.empty() {
    return BscScanAbiModel(
      status: 'empty',
      message: '',
      result: '',
    );
  }

  factory BscScanAbiModel.fromMap(Map<String, dynamic> map) {
    return BscScanAbiModel(
      status: map['status'],
      message: map['message'],
      result: map['result'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanAbiModel.fromJson(String source) =>
      BscScanAbiModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}
