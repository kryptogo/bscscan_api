import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanTxStatusModel with EquatableMixin {
  final String status;
  final String message;
  final BscScanTxStatusResult result;
  BscScanTxStatusModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanTxStatusModel copyWith({
    String? status,
    String? message,
    BscScanTxStatusResult? result,
  }) {
    return BscScanTxStatusModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result.toMap(),
    };
  }

  factory BscScanTxStatusModel.empty() {
    return BscScanTxStatusModel(
      status: 'empty',
      message: '',
      result: BscScanTxStatusResult.empty(),
    );
  }

  factory BscScanTxStatusModel.fromMap(Map<String, dynamic> map) {
    return BscScanTxStatusModel(
      status: map['status'],
      message: map['message'],
      result: BscScanTxStatusResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxStatusModel.fromJson(String source) =>
      BscScanTxStatusModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}

class BscScanTxStatusResult with EquatableMixin {
  final String isError;
  final String errDescription;
  BscScanTxStatusResult({
    required this.isError,
    required this.errDescription,
  });

  BscScanTxStatusResult copyWith({
    String? isError,
    String? errDescription,
  }) {
    return BscScanTxStatusResult(
      isError: isError ?? this.isError,
      errDescription: errDescription ?? this.errDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isError': isError,
      'errDescription': errDescription,
    };
  }

  factory BscScanTxStatusResult.empty() {
    return BscScanTxStatusResult(
      isError: '',
      errDescription: '',
    );
  }

  factory BscScanTxStatusResult.fromMap(Map<String, dynamic> map) {
    return BscScanTxStatusResult(
      isError: map['isError'],
      errDescription: map['errDescription'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxStatusResult.fromJson(String source) =>
      BscScanTxStatusResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [isError, errDescription];
}
