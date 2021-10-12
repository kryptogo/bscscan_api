import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanBlockRewardModel with EquatableMixin {
  final String status;
  final String message;
  final BscScanBlockRewardResult result;
  BscScanBlockRewardModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanBlockRewardModel copyWith({
    String? status,
    String? message,
    BscScanBlockRewardResult? result,
  }) {
    return BscScanBlockRewardModel(
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

  factory BscScanBlockRewardModel.empty() {
    return BscScanBlockRewardModel(
      status: 'empty',
      message: '',
      result: BscScanBlockRewardResult.empty(),
    );
  }

  factory BscScanBlockRewardModel.fromMap(Map<String, dynamic> map) {
    return BscScanBlockRewardModel(
      status: map['status'],
      message: map['message'],
      result: BscScanBlockRewardResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanBlockRewardModel.fromJson(String source) =>
      BscScanBlockRewardModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}

class BscScanBlockRewardResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String blockMiner;
  final String blockReward;
  final List<dynamic> uncles;
  final String uncleInclusionReward;
  BscScanBlockRewardResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.blockMiner,
    required this.blockReward,
    required this.uncles,
    required this.uncleInclusionReward,
  });

  BscScanBlockRewardResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? blockMiner,
    String? blockReward,
    List<dynamic>? uncles,
    String? uncleInclusionReward,
  }) {
    return BscScanBlockRewardResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      blockMiner: blockMiner ?? this.blockMiner,
      blockReward: blockReward ?? this.blockReward,
      uncles: uncles ?? this.uncles,
      uncleInclusionReward: uncleInclusionReward ?? this.uncleInclusionReward,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'blockMiner': blockMiner,
      'blockReward': blockReward,
      'uncles': uncles,
      'uncleInclusionReward': uncleInclusionReward,
    };
  }

  factory BscScanBlockRewardResult.empty() {
    return BscScanBlockRewardResult(
      blockNumber: '',
      timeStamp: '',
      blockMiner: '',
      blockReward: '',
      uncles: [],
      uncleInclusionReward: '',
    );
  }

  factory BscScanBlockRewardResult.fromMap(Map<String, dynamic> map) {
    return BscScanBlockRewardResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      blockMiner: map['blockMiner'],
      blockReward: map['blockReward'],
      uncles: List<dynamic>.from(map['uncles']),
      uncleInclusionReward: map['uncleInclusionReward'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanBlockRewardResult.fromJson(String source) =>
      BscScanBlockRewardResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props {
    return [
      blockNumber,
      timeStamp,
      blockMiner,
      blockReward,
      uncles,
      uncleInclusionReward,
    ];
  }
}
