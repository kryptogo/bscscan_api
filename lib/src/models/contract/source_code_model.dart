import 'dart:convert';

import 'package:equatable/equatable.dart';

class BscscanSourceCodeModel with EquatableMixin {
  final String status;
  final String message;
  final List<BscscanSourceCodeResult?>? result;
  BscscanSourceCodeModel({
    required this.status,
    required this.message,
    required this.result,
  });

  BscscanSourceCodeModel copyWith({
    String? status,
    String? message,
    List<BscscanSourceCodeResult>? result,
  }) {
    return BscscanSourceCodeModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result?.map((x) => x?.toMap()).toList(),
    };
  }

  factory BscscanSourceCodeModel.empty() {
    return BscscanSourceCodeModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory BscscanSourceCodeModel.fromMap(Map<String, dynamic> map) {
    return BscscanSourceCodeModel(
      status: map['status'],
      message: map['message'],
      result: List<BscscanSourceCodeResult>.from(
        map['result']?.map(
          (x) => BscscanSourceCodeResult.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BscscanSourceCodeModel.fromJson(String source) =>
      BscscanSourceCodeModel.fromMap(json.decode(source));

  @override
  List<Object> get props => [status, message, result ?? []];

  @override
  bool get stringify => true;
}

class BscscanSourceCodeResult with EquatableMixin {
  final String sourceCode;
  final String abi;
  final String contractName;
  final String compilerVersion;
  final String optimizationUsed;
  final String runs;
  final String constructorArguments;
  final String evmVersion;
  final String library;
  final String licenseType;
  final String proxy;
  final String implementation;
  final String swarmSource;

  BscscanSourceCodeResult({
    required this.sourceCode,
    required this.abi,
    required this.contractName,
    required this.compilerVersion,
    required this.optimizationUsed,
    required this.runs,
    required this.constructorArguments,
    required this.evmVersion,
    required this.library,
    required this.licenseType,
    required this.proxy,
    required this.implementation,
    required this.swarmSource,
  });

  BscscanSourceCodeResult copyWith({
    String? sourceCode,
    String? abi,
    String? contractName,
    String? compilerVersion,
    String? optimizationUsed,
    String? runs,
    String? constructorArguments,
    String? evmVersion,
    String? library,
    String? licenseType,
    String? proxy,
    String? implementation,
    String? swarmSource,
  }) {
    return BscscanSourceCodeResult(
      sourceCode: sourceCode ?? this.sourceCode,
      abi: abi ?? this.abi,
      contractName: contractName ?? this.contractName,
      compilerVersion: compilerVersion ?? this.compilerVersion,
      optimizationUsed: optimizationUsed ?? this.optimizationUsed,
      runs: runs ?? this.runs,
      constructorArguments: constructorArguments ?? this.constructorArguments,
      evmVersion: evmVersion ?? this.evmVersion,
      library: library ?? this.library,
      licenseType: licenseType ?? this.licenseType,
      proxy: proxy ?? this.proxy,
      implementation: implementation ?? this.implementation,
      swarmSource: swarmSource ?? this.swarmSource,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'SourceCode': sourceCode,
      'ABI': abi,
      'ContractName': contractName,
      'CompilerVersion': compilerVersion,
      'OptimizationUsed': optimizationUsed,
      'Runs': runs,
      'ConstructorArguments': constructorArguments,
      'EVMVersion': evmVersion,
      'Library': library,
      'LicenseType': licenseType,
      'Proxy': proxy,
      'Implementation': implementation,
      'SwarmSource': swarmSource,
    };
  }

  factory BscscanSourceCodeResult.fromMap(Map<String, dynamic> map) {
    return BscscanSourceCodeResult(
      sourceCode: map['SourceCode'],
      abi: map['ABI'],
      contractName: map['ContractName'],
      compilerVersion: map['CompilerVersion'],
      optimizationUsed: map['OptimizationUsed'],
      runs: map['Runs'],
      constructorArguments: map['ConstructorArguments'],
      evmVersion: map['EVMVersion'],
      library: map['Library'],
      licenseType: map['LicenseType'],
      proxy: map['Proxy'],
      implementation: map['Implementation'],
      swarmSource: map['SwarmSource'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BscscanSourceCodeResult.fromJson(String source) =>
      BscscanSourceCodeResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      sourceCode,
      abi,
      contractName,
      compilerVersion,
      optimizationUsed,
      runs,
      constructorArguments,
      evmVersion,
      library,
      licenseType,
      proxy,
      implementation,
      swarmSource,
    ];
  }
}
