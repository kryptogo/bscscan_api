import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanLogModel with EquatableMixin {
  final String status;
  final String message;
  final List<BscScanLogResult>? result;
  BscScanLogModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanLogModel copyWith({
    String? status,
    String? message,
    List<BscScanLogResult>? result,
  }) {
    return BscScanLogModel(
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

  factory BscScanLogModel.empty() {
    return BscScanLogModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory BscScanLogModel.fromMap(Map<String, dynamic> map) {
    return BscScanLogModel(
      status: map['status'],
      message: map['message'],
      result: List<BscScanLogResult>.from(
        map['result']?.map(
          (x) => BscScanLogResult.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanLogModel.fromJson(String source) =>
      BscScanLogModel.fromMap(json.decode(source));

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ result.hashCode;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class BscScanLogResult with EquatableMixin {
  final String address;
  final List<String>? topics;
  final String data;
  final String blockNumber;
  final String timeStamp;
  final String gasPrice;
  final String gasUsed;
  final String logIndex;
  final String transactionHash;
  final String transactionIndex;
  BscScanLogResult({
    required this.address,
    required this.topics,
    required this.data,
    required this.blockNumber,
    required this.timeStamp,
    required this.gasPrice,
    required this.gasUsed,
    required this.logIndex,
    required this.transactionHash,
    required this.transactionIndex,
  });

  BscScanLogResult copyWith({
    String? address,
    List<String>? topics,
    String? data,
    String? blockNumber,
    String? timeStamp,
    String? gasPrice,
    String? gasUsed,
    String? logIndex,
    String? transactionHash,
    String? transactionIndex,
  }) {
    return BscScanLogResult(
      address: address ?? this.address,
      topics: topics ?? this.topics,
      data: data ?? this.data,
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      gasPrice: gasPrice ?? this.gasPrice,
      gasUsed: gasUsed ?? this.gasUsed,
      logIndex: logIndex ?? this.logIndex,
      transactionHash: transactionHash ?? this.transactionHash,
      transactionIndex: transactionIndex ?? this.transactionIndex,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'topics': topics,
      'data': data,
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'gasPrice': gasPrice,
      'gasUsed': gasUsed,
      'logIndex': logIndex,
      'transactionHash': transactionHash,
      'transactionIndex': transactionIndex,
    };
  }

  factory BscScanLogResult.fromMap(Map<String, dynamic> map) {
    return BscScanLogResult(
      address: map['address'],
      topics: List<String>.from(map['topics']),
      data: map['data'],
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      gasPrice: map['gasPrice'],
      gasUsed: map['gasUsed'],
      logIndex: map['logIndex'],
      transactionHash: map['transactionHash'],
      transactionIndex: map['transactionIndex'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanLogResult.fromJson(String source) =>
      BscScanLogResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      address,
      topics ?? [],
      data,
      blockNumber,
      timeStamp,
      gasPrice,
      gasUsed,
      logIndex,
      transactionHash,
      transactionIndex,
    ];
  }
}
