import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanTxListModel with EquatableMixin {
  final String status;
  final String message;
  final List<BscScanTxResult>? result;
  BscScanTxListModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanTxListModel copyWith({
    String? status,
    String? message,
    List<BscScanTxResult>? result,
  }) {
    return BscScanTxListModel(
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

  factory BscScanTxListModel.empty() {
    return BscScanTxListModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory BscScanTxListModel.fromMap(Map<String, dynamic> map) {
    return BscScanTxListModel(
      status: map['status'],
      message: map['message'],
      result: List<BscScanTxResult>.from(
          map['result']?.map((x) => BscScanTxResult.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxListModel.fromJson(String source) =>
      BscScanTxListModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class BscScanTxResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String hash;
  final String nonce;
  final String blockHash;
  final String transactionIndex;
  final String from;
  final String to;
  final String value;
  final String gas;
  final String gasPrice;
  final String isError;
  final String txreceipt_status;
  final String input;
  final String contractAddress;
  final String cumulativeGasUsed;
  final String gasUsed;
  final String confirmations;
  BscScanTxResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.hash,
    required this.nonce,
    required this.blockHash,
    required this.transactionIndex,
    required this.from,
    required this.to,
    required this.value,
    required this.gas,
    required this.gasPrice,
    required this.isError,
    required this.txreceipt_status,
    required this.input,
    required this.contractAddress,
    required this.cumulativeGasUsed,
    required this.gasUsed,
    required this.confirmations,
  });

  BscScanTxResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? hash,
    String? nonce,
    String? blockHash,
    String? transactionIndex,
    String? from,
    String? to,
    String? value,
    String? gas,
    String? gasPrice,
    String? isError,
    String? txreceipt_status,
    String? input,
    String? contractAddress,
    String? cumulativeGasUsed,
    String? gasUsed,
    String? confirmations,
  }) {
    return BscScanTxResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      hash: hash ?? this.hash,
      nonce: nonce ?? this.nonce,
      blockHash: blockHash ?? this.blockHash,
      transactionIndex: transactionIndex ?? this.transactionIndex,
      from: from ?? this.from,
      to: to ?? this.to,
      value: value ?? this.value,
      gas: gas ?? this.gas,
      gasPrice: gasPrice ?? this.gasPrice,
      isError: isError ?? this.isError,
      txreceipt_status: txreceipt_status ?? this.txreceipt_status,
      input: input ?? this.input,
      contractAddress: contractAddress ?? this.contractAddress,
      cumulativeGasUsed: cumulativeGasUsed ?? this.cumulativeGasUsed,
      gasUsed: gasUsed ?? this.gasUsed,
      confirmations: confirmations ?? this.confirmations,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'hash': hash,
      'nonce': nonce,
      'blockHash': blockHash,
      'transactionIndex': transactionIndex,
      'from': from,
      'to': to,
      'value': value,
      'gas': gas,
      'gasPrice': gasPrice,
      'isError': isError,
      'txreceipt_status': txreceipt_status,
      'input': input,
      'contractAddress': contractAddress,
      'cumulativeGasUsed': cumulativeGasUsed,
      'gasUsed': gasUsed,
      'confirmations': confirmations,
    };
  }

  factory BscScanTxResult.fromMap(Map<String, dynamic> map) {
    return BscScanTxResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      hash: map['hash'],
      nonce: map['nonce'],
      blockHash: map['blockHash'],
      transactionIndex: map['transactionIndex'],
      from: map['from'],
      to: map['to'],
      value: map['value'],
      gas: map['gas'],
      gasPrice: map['gasPrice'],
      isError: map['isError'],
      txreceipt_status: map['txreceipt_status'],
      input: map['input'],
      contractAddress: map['contractAddress'],
      cumulativeGasUsed: map['cumulativeGasUsed'],
      gasUsed: map['gasUsed'],
      confirmations: map['confirmations'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanTxResult.fromJson(String source) =>
      BscScanTxResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props {
    return [
      blockNumber,
      timeStamp,
      hash,
      nonce,
      blockHash,
      transactionIndex,
      from,
      to,
      value,
      gas,
      gasPrice,
      isError,
      txreceipt_status,
      input,
      contractAddress,
      cumulativeGasUsed,
      gasUsed,
      confirmations,
    ];
  }
}
