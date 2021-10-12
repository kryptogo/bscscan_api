import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanRpcResponseModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final String result;
  BscScanRpcResponseModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  BscScanRpcResponseModel copyWith({
    String? jsonrpc,
    int? id,
    String? result,
  }) {
    return BscScanRpcResponseModel(
      jsonrpc: jsonrpc ?? this.jsonrpc,
      id: id ?? this.id,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'jsonrpc': jsonrpc,
      'id': id,
      'result': result,
    };
  }

  factory BscScanRpcResponseModel.empty() {
    return BscScanRpcResponseModel(
      jsonrpc: '',
      id: 0,
      result: '',
    );
  }

  factory BscScanRpcResponseModel.fromMap(Map<String, dynamic> map) {
    return BscScanRpcResponseModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: map['result'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanRpcResponseModel.fromJson(String source) =>
      BscScanRpcResponseModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}
