import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanTxByHashModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final BscScanTxByHashModelResult result;
  BscScanTxByHashModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  BscScanTxByHashModel copyWith({
    String? jsonrpc,
    int? id,
    BscScanTxByHashModelResult? result,
  }) {
    return BscScanTxByHashModel(
      jsonrpc: jsonrpc ?? this.jsonrpc,
      id: id ?? this.id,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'jsonrpc': jsonrpc,
      'id': id,
      'result': result.toMap(),
    };
  }

  factory BscScanTxByHashModel.empty() {
    return BscScanTxByHashModel(
      jsonrpc: '',
      id: 0,
      result: BscScanTxByHashModelResult.empty(),
    );
  }

  factory BscScanTxByHashModel.fromMap(Map<String, dynamic> map) {
    return BscScanTxByHashModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: BscScanTxByHashModelResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxByHashModel.fromJson(String source) =>
      BscScanTxByHashModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}

class BscScanTxByHashModelResult with EquatableMixin {
  final String? blockHash;
  final String? blockNumber;
  final String from;
  final String gas;
  final String gasPrice;
  final String hash;
  final String input;
  final String nonce;
  final String to;
  final String? transactionIndex;
  final String value;
  final String type;
  final String v;
  final String r;
  final String s;

  BscScanTxByHashModelResult({
    this.blockHash,
    this.blockNumber,
    required this.from,
    required this.gas,
    required this.gasPrice,
    required this.hash,
    required this.input,
    required this.nonce,
    required this.to,
    this.transactionIndex,
    required this.value,
    required this.type,
    required this.v,
    required this.r,
    required this.s,
  });

  BscScanTxByHashModelResult copyWith({
    String? blockHash,
    String? blockNumber,
    String? from,
    String? gas,
    String? gasPrice,
    String? hash,
    String? input,
    String? nonce,
    String? to,
    String? transactionIndex,
    String? value,
    String? type,
    String? v,
    String? r,
    String? s,
  }) {
    return BscScanTxByHashModelResult(
      blockHash: blockHash ?? this.blockHash ?? "",
      blockNumber: blockNumber ?? this.blockNumber ?? "",
      from: from ?? this.from,
      gas: gas ?? this.gas,
      gasPrice: gasPrice ?? this.gasPrice,
      hash: hash ?? this.hash,
      input: input ?? this.input,
      nonce: nonce ?? this.nonce,
      to: to ?? this.to,
      transactionIndex: transactionIndex ?? this.transactionIndex ?? "",
      value: value ?? this.value,
      type: type ?? this.type,
      v: v ?? this.v,
      r: r ?? this.r,
      s: s ?? this.s,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockHash': blockHash,
      'blockNumber': blockNumber,
      'from': from,
      'gas': gas,
      'gasPrice': gasPrice,
      'hash': hash,
      'input': input,
      'nonce': nonce,
      'to': to,
      'transactionIndex': transactionIndex,
      'value': value,
      'type': type,
      'v': v,
      'r': r,
      's': s,
    };
  }

  factory BscScanTxByHashModelResult.empty() {
    return BscScanTxByHashModelResult(
      blockHash: '',
      blockNumber: '',
      from: '',
      gas: '',
      gasPrice: '',
      hash: '',
      input: '',
      nonce: '',
      to: '',
      transactionIndex: '',
      value: '',
      type: '',
      v: '',
      r: '',
      s: '',
    );
  }

  factory BscScanTxByHashModelResult.fromMap(Map<String, dynamic> map) {
    return BscScanTxByHashModelResult(
      blockHash: map['blockHash'],
      blockNumber: map['blockNumber'],
      from: map['from'],
      gas: map['gas'],
      gasPrice: map['gasPrice'],
      hash: map['hash'],
      input: map['input'],
      nonce: map['nonce'],
      to: map['to'],
      transactionIndex: map['transactionIndex'],
      value: map['value'],
      type: map['type'],
      v: map['v'],
      r: map['r'],
      s: map['s'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxByHashModelResult.fromJson(String source) =>
      BscScanTxByHashModelResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      blockHash,
      blockNumber,
      from,
      gas,
      gasPrice,
      hash,
      input,
      nonce,
      to,
      transactionIndex,
      value,
      type,
      v,
      r,
      s,
    ];
  }
}
