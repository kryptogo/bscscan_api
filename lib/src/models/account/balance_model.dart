import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanBalanceModel with EquatableMixin {
  final String status;
  final String message;
  final List<BscScanBalanceResult>? result;
  BscScanBalanceModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanBalanceModel copyWith({
    String? status,
    String? message,
    List<BscScanBalanceResult>? result,
  }) {
    return BscScanBalanceModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result?.map((x) => x.toMap()).toList(),
    };
  }

  factory BscScanBalanceModel.empty() {
    return BscScanBalanceModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory BscScanBalanceModel.fromMap(Map<String, dynamic> map) {
    return BscScanBalanceModel(
      status: map['status'],
      message: map['message'],
      result: List<BscScanBalanceResult>.from(
          map['result']?.map((x) => BscScanBalanceResult.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanBalanceModel.fromJson(String source) =>
      BscScanBalanceModel.fromMap(json.decode(source));
  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class BscScanBalanceResult with EquatableMixin {
  final String account;
  final String balance;
  BscScanBalanceResult({
    required this.account,
    required this.balance,
  });

  BscScanBalanceResult copyWith({
    String? account,
    String? balance,
  }) {
    return BscScanBalanceResult(
      account: account ?? this.account,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'account': account,
      'balance': balance,
    };
  }

  factory BscScanBalanceResult.fromMap(Map<String, dynamic> map) {
    return BscScanBalanceResult(
      account: map['account'],
      balance: map['balance'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanBalanceResult.fromJson(String source) =>
      BscScanBalanceResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [account, balance];
}
