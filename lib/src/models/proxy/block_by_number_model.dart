import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class BscScanBlockByNumberModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final BscScanBlockNumberResult result;
  BscScanBlockByNumberModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  BscScanBlockByNumberModel copyWith({
    String? jsonrpc,
    int? id,
    BscScanBlockNumberResult? result,
  }) {
    return BscScanBlockByNumberModel(
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

  factory BscScanBlockByNumberModel.empty() {
    return BscScanBlockByNumberModel(
      jsonrpc: '',
      id: 0,
      result: BscScanBlockNumberResult.empty(),
    );
  }

  factory BscScanBlockByNumberModel.fromMap(Map<String, dynamic> map) {
    return BscScanBlockByNumberModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: BscScanBlockNumberResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanBlockByNumberModel.fromJson(String source) =>
      BscScanBlockByNumberModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}

class BscScanBlockNumberResult with EquatableMixin {
  final String difficulty;
  final String extraData;
  final String gasLimit;
  final String gasUsed;
  final String hash;
  final String logsBloom;
  final String miner;
  final String mixHash;
  final String nonce;
  final String number;
  final String parentHash;
  final String receiptsRoot;
  final String sha3Uncles;
  final String size;
  final String stateRoot;
  final String timestamp;
  final String? totalDifficulty;
  final List<Either<BscScanBlockNumberResultTransaction, String>>? transactions;
  final String transactionsRoot;
  final List<dynamic> uncles;

  BscScanBlockNumberResult({
    required this.difficulty,
    required this.extraData,
    required this.gasLimit,
    required this.gasUsed,
    required this.hash,
    required this.logsBloom,
    required this.miner,
    required this.mixHash,
    required this.nonce,
    required this.number,
    required this.parentHash,
    required this.receiptsRoot,
    required this.sha3Uncles,
    required this.size,
    required this.stateRoot,
    required this.timestamp,
    required this.totalDifficulty,
    required this.transactions,
    required this.transactionsRoot,
    required this.uncles,
  });

  BscScanBlockNumberResult copyWith({
    String? difficulty,
    String? extraData,
    String? gasLimit,
    String? gasUsed,
    String? hash,
    String? logsBloom,
    String? miner,
    String? mixHash,
    String? nonce,
    String? number,
    String? parentHash,
    String? receiptsRoot,
    String? sha3Uncles,
    String? size,
    String? stateRoot,
    String? timestamp,
    String? totalDifficulty,
    List<Either<BscScanBlockNumberResultTransaction, String>>? transactions,
    String? transactionsRoot,
    List<dynamic>? uncles,
  }) {
    return BscScanBlockNumberResult(
      difficulty: difficulty ?? this.difficulty,
      extraData: extraData ?? this.extraData,
      gasLimit: gasLimit ?? this.gasLimit,
      gasUsed: gasUsed ?? this.gasUsed,
      hash: hash ?? this.hash,
      logsBloom: logsBloom ?? this.logsBloom,
      miner: miner ?? this.miner,
      mixHash: mixHash ?? this.mixHash,
      nonce: nonce ?? this.nonce,
      number: number ?? this.number,
      parentHash: parentHash ?? this.parentHash,
      receiptsRoot: receiptsRoot ?? this.receiptsRoot,
      sha3Uncles: sha3Uncles ?? this.sha3Uncles,
      size: size ?? this.size,
      stateRoot: stateRoot ?? this.stateRoot,
      timestamp: timestamp ?? this.timestamp,
      totalDifficulty: totalDifficulty ?? this.totalDifficulty,
      transactions: transactions ?? this.transactions,
      transactionsRoot: transactionsRoot ?? this.transactionsRoot,
      uncles: uncles ?? this.uncles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'difficulty': difficulty,
      'extraData': extraData,
      'gasLimit': gasLimit,
      'gasUsed': gasUsed,
      'hash': hash,
      'logsBloom': logsBloom,
      'miner': miner,
      'mixHash': mixHash,
      'nonce': nonce,
      'number': number,
      'parentHash': parentHash,
      'receiptsRoot': receiptsRoot,
      'sha3Uncles': sha3Uncles,
      'size': size,
      'stateRoot': stateRoot,
      'timestamp': timestamp,
      'totalDifficulty': totalDifficulty,
      'transactions':
          transactions?.map((x) => x.fold((l) => l.toMap(), (r) => r)).toList(),
      'transactionsRoot': transactionsRoot,
      'uncles': uncles,
    };
  }

  factory BscScanBlockNumberResult.empty() {
    return BscScanBlockNumberResult(
      difficulty: '',
      extraData: '',
      gasLimit: '',
      gasUsed: '',
      hash: '',
      logsBloom: '',
      miner: '',
      mixHash: '',
      nonce: '',
      number: '',
      parentHash: '',
      receiptsRoot: '',
      sha3Uncles: '',
      size: '',
      stateRoot: '',
      timestamp: '',
      totalDifficulty: '',
      transactions: [],
      transactionsRoot: '',
      uncles: [],
    );
  }

  factory BscScanBlockNumberResult.fromMap(Map<String, dynamic> map) {
    return BscScanBlockNumberResult(
      difficulty: map['difficulty'],
      extraData: map['extraData'],
      gasLimit: map['gasLimit'],
      gasUsed: map['gasUsed'],
      hash: map['hash'],
      logsBloom: map['logsBloom'],
      miner: map['miner'],
      mixHash: map['mixHash'],
      nonce: map['nonce'],
      number: map['number'],
      parentHash: map['parentHash'],
      receiptsRoot: map['receiptsRoot'],
      sha3Uncles: map['sha3Uncles'],
      size: map['size'],
      stateRoot: map['stateRoot'],
      timestamp: map['timestamp'],
      totalDifficulty: map['totalDifficulty'],
      transactions:
          List<Either<BscScanBlockNumberResultTransaction, String>>.from(
              (map['transactions'] ?? [])
                  ?.map<Either<BscScanBlockNumberResultTransaction, String>>(
                      (x) => (x is String
                          ? x
                          : BscScanBlockNumberResultTransaction.fromMap(x)))),
      transactionsRoot: map['transactionsRoot'],
      uncles: List<dynamic>.from(map['uncles']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanBlockNumberResult.fromJson(String source) =>
      BscScanBlockNumberResult.fromMap(json.decode(source));
  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      difficulty,
      extraData,
      gasLimit,
      gasUsed,
      hash,
      logsBloom,
      miner,
      mixHash,
      nonce,
      number,
      parentHash,
      receiptsRoot,
      sha3Uncles,
      size,
      stateRoot,
      timestamp,
      totalDifficulty ?? '',
      transactions ?? [],
      transactionsRoot,
      uncles,
    ];
  }
}

class BscScanBlockNumberResultTransaction with EquatableMixin {
  final String blockHash;
  final String blockNumber;
  final String from;
  final String gas;
  final String gasPrice;
  final String hash;
  final String input;
  final String nonce;
  final String? to;
  final String transactionIndex;
  final String value;
  final String type;
  final String v;
  final String r;
  final String s;

  BscScanBlockNumberResultTransaction({
    required this.blockHash,
    required this.blockNumber,
    required this.from,
    required this.gas,
    required this.gasPrice,
    required this.hash,
    required this.input,
    required this.nonce,
    this.to,
    required this.transactionIndex,
    required this.value,
    required this.type,
    required this.v,
    required this.r,
    required this.s,
  });

  BscScanBlockNumberResultTransaction copyWith({
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
    return BscScanBlockNumberResultTransaction(
      blockHash: blockHash ?? this.blockHash,
      blockNumber: blockNumber ?? this.blockNumber,
      from: from ?? this.from,
      gas: gas ?? this.gas,
      gasPrice: gasPrice ?? this.gasPrice,
      hash: hash ?? this.hash,
      input: input ?? this.input,
      nonce: nonce ?? this.nonce,
      to: to ?? this.to,
      transactionIndex: transactionIndex ?? this.transactionIndex,
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

  factory BscScanBlockNumberResultTransaction.fromMap(
      Map<String, dynamic> map) {
    return BscScanBlockNumberResultTransaction(
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

  factory BscScanBlockNumberResultTransaction.fromJson(String source) =>
      BscScanBlockNumberResultTransaction.fromMap(json.decode(source));

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
      to ?? "",
      transactionIndex,
      value,
      type,
      v,
      r,
      s,
    ];
  }
}
