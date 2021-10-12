import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscScanPriceModel with EquatableMixin {
  final String status;
  final String message;
  final BscScanPriceResult result;

  BscScanPriceModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscScanPriceModel copyWith({
    String? status,
    String? message,
    BscScanPriceResult? result,
  }) {
    return BscScanPriceModel(
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

  factory BscScanPriceModel.empty() {
    return BscScanPriceModel(
      status: 'empty',
      message: '',
      result: BscScanPriceResult.empty(),
    );
  }

  factory BscScanPriceModel.fromMap(Map<String, dynamic> map) {
    return BscScanPriceModel(
      status: map['status'],
      message: map['message'],
      result: BscScanPriceResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanPriceModel.fromJson(String source) =>
      BscScanPriceModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}

class BscScanPriceResult with EquatableMixin {
  final String ethbtc;
  final String ethbtc_timestamp;
  final String ethusd;
  final String ethusd_timestamp;

  BscScanPriceResult({
    required this.ethbtc,
    required this.ethbtc_timestamp,
    required this.ethusd,
    required this.ethusd_timestamp,
  });

  BscScanPriceResult copyWith({
    String? ethbtc,
    String? ethbtc_timestamp,
    String? ethusd,
    String? ethusd_timestamp,
  }) {
    return BscScanPriceResult(
      ethbtc: ethbtc ?? this.ethbtc,
      ethbtc_timestamp: ethbtc_timestamp ?? this.ethbtc_timestamp,
      ethusd: ethusd ?? this.ethusd,
      ethusd_timestamp: ethusd_timestamp ?? this.ethusd_timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ethbtc': ethbtc,
      'ethbtc_timestamp': ethbtc_timestamp,
      'ethusd': ethusd,
      'ethusd_timestamp': ethusd_timestamp,
    };
  }

  factory BscScanPriceResult.empty() {
    return BscScanPriceResult(
      ethbtc: '',
      ethbtc_timestamp: '',
      ethusd: '',
      ethusd_timestamp: '',
    );
  }

  factory BscScanPriceResult.fromMap(Map<String, dynamic> map) {
    return BscScanPriceResult(
      ethbtc: map['ethbtc'],
      ethbtc_timestamp: map['ethbtc_timestamp'],
      ethusd: map['ethusd'],
      ethusd_timestamp: map['ethusd_timestamp'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscScanPriceResult.fromJson(String source) =>
      BscScanPriceResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        ethbtc,
        ethbtc_timestamp,
        ethusd,
        ethusd_timestamp,
      ];
}
