import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanMintedBlocksModel with EquatableMixin {
  final String status;
  final String message;
  final List<BscScanMintedBlocksResult>? result;
  BscScanMintedBlocksModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanMintedBlocksModel copyWith({
    String? status,
    String? message,
    List<BscScanMintedBlocksResult>? result,
  }) {
    return BscScanMintedBlocksModel(
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

  factory BscScanMintedBlocksModel.empty() {
    return BscScanMintedBlocksModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory BscScanMintedBlocksModel.fromMap(Map<String, dynamic> map) {
    return BscScanMintedBlocksModel(
      status: map['status'],
      message: map['message'],
      result: List<BscScanMintedBlocksResult>.from(
          map['result']?.map((x) => BscScanMintedBlocksResult.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanMintedBlocksModel.fromJson(String source) =>
      BscScanMintedBlocksModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class BscScanMintedBlocksResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String blockReward;
  BscScanMintedBlocksResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.blockReward,
  });

  BscScanMintedBlocksResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? blockReward,
  }) {
    return BscScanMintedBlocksResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      blockReward: blockReward ?? this.blockReward,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'blockReward': blockReward,
    };
  }

  factory BscScanMintedBlocksResult.fromMap(Map<String, dynamic> map) {
    return BscScanMintedBlocksResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      blockReward: map['blockReward'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanMintedBlocksResult.fromJson(String source) =>
      BscScanMintedBlocksResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [blockNumber, timeStamp, blockReward];
}
