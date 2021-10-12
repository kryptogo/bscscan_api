import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanTxReceiptModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final BscScanTxReceiptResult result;
  BscScanTxReceiptModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  BscScanTxReceiptModel copyWith({
    String? jsonrpc,
    int? id,
    BscScanTxReceiptResult? result,
  }) {
    return BscScanTxReceiptModel(
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

  factory BscScanTxReceiptModel.empty() {
    return BscScanTxReceiptModel(
      jsonrpc: '',
      id: 0,
      result: BscScanTxReceiptResult.empty(),
    );
  }

  factory BscScanTxReceiptModel.fromMap(Map<String, dynamic> map) {
    return BscScanTxReceiptModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: BscScanTxReceiptResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxReceiptModel.fromJson(String source) =>
      BscScanTxReceiptModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}

class BscScanTxReceiptResult with EquatableMixin {
  final String blockHash;
  final String blockNumber;
  final Object? contractAddress;
  final String cumulativeGasUsed;
  final String from;
  final String gasUsed;
  final List<Log>? logs;
  final String logsBloom;
  final String to;
  final String transactionHash;
  final String transactionIndex;
  final String type;
  BscScanTxReceiptResult({
    required this.blockHash,
    required this.blockNumber,
    required this.contractAddress,
    required this.cumulativeGasUsed,
    required this.from,
    required this.gasUsed,
    required this.logs,
    required this.logsBloom,
    required this.to,
    required this.transactionHash,
    required this.transactionIndex,
    required this.type,
  });

  BscScanTxReceiptResult copyWith({
    String? blockHash,
    String? blockNumber,
    Object? contractAddress,
    String? cumulativeGasUsed,
    String? from,
    String? gasUsed,
    List<Log>? logs,
    String? logsBloom,
    String? to,
    String? transactionHash,
    String? transactionIndex,
    String? type,
  }) {
    return BscScanTxReceiptResult(
      blockHash: blockHash ?? this.blockHash,
      blockNumber: blockNumber ?? this.blockNumber,
      contractAddress: contractAddress ?? this.contractAddress,
      cumulativeGasUsed: cumulativeGasUsed ?? this.cumulativeGasUsed,
      from: from ?? this.from,
      gasUsed: gasUsed ?? this.gasUsed,
      logs: logs ?? this.logs,
      logsBloom: logsBloom ?? this.logsBloom,
      to: to ?? this.to,
      transactionHash: transactionHash ?? this.transactionHash,
      transactionIndex: transactionIndex ?? this.transactionIndex,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockHash': blockHash,
      'blockNumber': blockNumber,
      'contractAddress': contractAddress,
      'cumulativeGasUsed': cumulativeGasUsed,
      'from': from,
      'gasUsed': gasUsed,
      'logs': logs?.map((x) => x.toMap()).toList(),
      'logsBloom': logsBloom,
      'to': to,
      'transactionHash': transactionHash,
      'transactionIndex': transactionIndex,
      'type': type,
    };
  }

  factory BscScanTxReceiptResult.empty() {
    return BscScanTxReceiptResult(
      blockHash: '',
      blockNumber: '',
      contractAddress: '',
      cumulativeGasUsed: '',
      from: '',
      gasUsed: '',
      logs: [],
      logsBloom: '',
      to: '',
      transactionHash: '',
      transactionIndex: '',
      type: '',
    );
  }

  factory BscScanTxReceiptResult.fromMap(Map<String, dynamic> map) {
    return BscScanTxReceiptResult(
      blockHash: map['blockHash'],
      blockNumber: map['blockNumber'],
      contractAddress: map['contractAddress'],
      cumulativeGasUsed: map['cumulativeGasUsed'],
      from: map['from'],
      gasUsed: map['gasUsed'],
      logs: List<Log>.from(map['logs']?.map((x) => Log.fromMap(x))),
      logsBloom: map['logsBloom'],
      to: map['to'],
      transactionHash: map['transactionHash'],
      transactionIndex: map['transactionIndex'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxReceiptResult.fromJson(String source) =>
      BscScanTxReceiptResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      blockHash,
      blockNumber,
      contractAddress ?? '',
      cumulativeGasUsed,
      from,
      gasUsed,
      logs ?? [],
      logsBloom,
      to,
      transactionHash,
      transactionIndex,
      type,
    ];
  }
}

class Log with EquatableMixin {
  final String address;
  final List<String> topics;
  final String data;
  final String blockNumber;
  final String transactionHash;
  final String transactionIndex;
  final String blockHash;
  final String logIndex;
  final bool removed;
  Log({
    required this.address,
    required this.topics,
    required this.data,
    required this.blockNumber,
    required this.transactionHash,
    required this.transactionIndex,
    required this.blockHash,
    required this.logIndex,
    required this.removed,
  });

  Log copyWith({
    String? address,
    List<String>? topics,
    String? data,
    String? blockNumber,
    String? transactionHash,
    String? transactionIndex,
    String? blockHash,
    String? logIndex,
    bool? removed,
  }) {
    return Log(
      address: address ?? this.address,
      topics: topics ?? this.topics,
      data: data ?? this.data,
      blockNumber: blockNumber ?? this.blockNumber,
      transactionHash: transactionHash ?? this.transactionHash,
      transactionIndex: transactionIndex ?? this.transactionIndex,
      blockHash: blockHash ?? this.blockHash,
      logIndex: logIndex ?? this.logIndex,
      removed: removed ?? this.removed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'topics': topics,
      'data': data,
      'blockNumber': blockNumber,
      'transactionHash': transactionHash,
      'transactionIndex': transactionIndex,
      'blockHash': blockHash,
      'logIndex': logIndex,
      'removed': removed,
    };
  }

  factory Log.fromMap(Map<String, dynamic> map) {
    return Log(
      address: map['address'],
      topics: List<String>.from(map['topics']),
      data: map['data'],
      blockNumber: map['blockNumber'],
      transactionHash: map['transactionHash'],
      transactionIndex: map['transactionIndex'],
      blockHash: map['blockHash'],
      logIndex: map['logIndex'],
      removed: map['removed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Log.fromJson(String source) => Log.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      address,
      topics,
      data,
      blockNumber,
      transactionHash,
      transactionIndex,
      blockHash,
      logIndex,
      removed,
    ];
  }
}
