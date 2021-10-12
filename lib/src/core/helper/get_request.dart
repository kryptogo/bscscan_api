import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:bscscan_api/bscscan_api.dart';
import 'package:bscscan_api/src/core/utils/logger.dart';

import '../commons/failure.dart';

const BSC_API_URLS = {
  'mainnet': 'https://api.bscscan.com',
  'testnet': 'https://api-testnet.bscscan.com',
};

extension GetRequest on BscscanAPI {
  /// Runs query
  /// returns [Future<Either<BscScanFailure, String>>]
  Future<Either<BscScanFailure, String>> get<T>(
    Map<String, dynamic>? query,
  ) async {
    try {
      if (enableLogs == true) {
        // Log data response
        print('api_url: ${chain.chainApiUrl}\n');
        print('query: ${stringifyMessage(query)}\n');
      }

      /// Dio client
      final client = Dio(
        BaseOptions(
          baseUrl: chain.chainApiUrl,
          connectTimeout: timeout?.inMilliseconds,
          responseType: ResponseType.json,
        ),
      );

      /// Make Request
      final res = await client.get('/api', queryParameters: query);

      /// Return Error if data is null
      if (res.data == null) {
        if (enableLogs == true) {
          // Log error response
          print('Error: Null Response\n');
        }
        return Left(BscScanFailure(message: 'Null Response'));
      }

      var status = res.data['status'];
      if (status != null && status != '1' || '${res.data}'.contains('error')) {
        if (enableLogs == true) {
          // Log error response
          print('Error: ${res.data}');
        }

        return Left(BscScanFailure(message: '${res.data}'));
      }

      if (enableLogs == true) {
        // Log success response
        print('response: ${stringifyMessage(res.data)}\n');
      }
      return Right(json.encode(res.data));
    } catch (e) {
      var msg = e.toString();

      if (enableLogs == true) {
        /// Log error response
        print('Error: $msg');
      }
      return Left(BscScanFailure(message: msg));
    }
  }
}
