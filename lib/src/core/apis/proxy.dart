import 'package:bscscan_api/src/bscscan_api.dart';
import 'package:bscscan_api/src/core/helper/get_request.dart';
import 'package:bscscan_api/src/models/models.dart';

extension BscProxy on BscscanAPI {
  /// Returns the number of most recent block
  ///
  /// Example
  ///
  ///```
  /// var block = bsc.blockNumber();
  /// ```
  ///

  Future<BscScanRpcResponseModel> blockNumber() async {
    const module = 'proxy';
    const action = 'eth_blockNumber';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns information about a block by block number.
  ///
  /// `tag` - Tag to look up
  ///
  /// Example
  ///
  /// ```dart
  /// var blockNumber = bsc.getBlockByNumber(tag: '0x10d4f');
  /// ```

  Future<BscScanBlockByNumberModel> getBlockByNumber({
    required String? tag,
    bool? isFull,
  }) async {
    const module = 'proxy';
    const action = 'eth_getBlockByNumber';

    Map<String, dynamic>? query = {
      'tag': tag,
      'module': module,
      'action': action,
      'boolean': isFull ?? false,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanBlockByNumberModel.empty(),
      (r) => BscScanBlockByNumberModel.fromJson(r),
    );
  }

  /// Returns the number of transactions in a block from a block matching the given block number
  ///
  /// `tag` - Tag to look up
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getBlockTransactionCountByNumber(
  ///     tag:'0x10FB78'
  /// );
  /// ```
  ///

  Future<BscScanRpcResponseModel> getBlockTransactionCountByNumber({
    required String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getBlockTransactionCountByNumber';

    Map<String, dynamic>? query = {
      'tag': tag,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };
    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns the information about a transaction requested by transaction hash
  ///
  /// `hash` - Transaction hash
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getTransactionByHash(
  ///     txhash: '0x1e2910a262b1008d0616a0beb24c1a491d78771baa54a33e66065e03b1f46bc1'
  /// );
  /// ```
  ///

  Future<BscScanTxByHashModel> getTransactionByHash({
    required String? txhash,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionByHash';

    Map<String, dynamic>? query = {
      'txhash': txhash,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanTxByHashModel.empty(),
      (r) => BscScanTxByHashModel.fromJson(r),
    );
  }

  /// Returns information about a transaction by block number and transaction index position
  ///
  /// `tag` - Tag to look up
  ///
  /// `index` - Index
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getTransactionByBlockNumberAndIndex(
  ///    tag: '0x10d4f',
  ///    index: '0x0'
  /// );
  /// ```
  ///

  Future<BscScanTxByHashModel> getTransactionByBlockNumberAndIndex({
    required String? tag,
    required String? index,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionByBlockNumberAndIndex';

    Map<String, dynamic>? query = {
      'index': index,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanTxByHashModel.empty(),
      (r) => BscScanTxByHashModel.fromJson(r),
    );
  }

  /// Returns the number of transactions sent from an address
  ///
  /// `address` - Address of the transaction
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getTransactionCount(
  ///     address: '0x2910543af39aba0cd09dbb2d50200b3e800a63d2',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<BscScanRpcResponseModel> getTransactionCount({
    required String? address,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionCount';

    Map<String, dynamic>? query = {
      'address': address,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Creates new message call transaction or a contract creation for signed transactions
  ///
  /// `hex` - Serialized Message
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.sendRawTransaction(
  ///   hex: '0xf904808000831cfde080'
  /// );
  /// ```
  ///

  Future<String?> sendRawTransaction({
    required String? hex,
  }) async {
    const module = 'proxy';
    const action = 'eth_sendRawTransaction';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'hex': hex,
    };

    return (await get(query)).fold(
      (l) => null,
      (r) => r,
    );
  }

  /// Returns the receipt of a transaction by transaction hash
  ///
  /// `txhash` - Transaction hash
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getTransactionReceipt(
  ///     txhash: '0x1e2910a262b1008d0616a0beb24c1a491d78771baa54a33e66065e03b1f46bc1'
  /// );
  /// ```
  ///

  Future<BscScanTxReceiptModel> getTransactionReceipt({
    required String? txhash,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionReceipt';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'txhash': txhash,
    };

    return (await get(query)).fold(
      (l) => BscScanTxReceiptModel.empty(),
      (r) => BscScanTxReceiptModel.fromJson(r),
    );
  }

  /// Executes a new message call immediately without creating a transaction on the block chain
  ///
  /// `to` - Address to execute from
  ///
  /// `data` - Data to transfer
  ///
  /// `tag` - A tag
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.call(
  ///     to: '0xAEEF46DB4855E25702F8237E8f403FddcaF931C0',
  ///     data: '0x70a08231000000000000000000000000e16359506c028e51f16be38986ec5746251e9724',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<BscScanRpcResponseModel> call({
    required String? to,
    required String? data,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_call';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'to': to,
      'data': data,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns code at a given address
  ///
  /// `address` - Address to get code from
  ///
  /// `tag` - ??
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getCode(
  ///     address: '0xf75e354c5edc8efed9b59ee9f67a80845ade7d0c',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<BscScanRpcResponseModel> getCode({
    required String address,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getCode';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'address': address,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns the value from a storage position at a given address.
  ///
  /// `address` - Address to get code from
  ///
  /// `position` - Storage position
  ///
  /// `tag` - ??
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.getStorageAt(
  ///     address: '0x6e03d9cce9d60f3e9f2597e13cd4c54c55330cfd',
  ///     position:'0x0',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<BscScanRpcResponseModel> getStorageAt({
    required String address,
    required String position,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getStorageAt';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'address': address,
      'position': position,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns the current price per gas in wei.
  ///
  /// ```dart
  /// var gasprice = bsc.gasPrice();
  /// ```
  ///

  Future<BscScanRpcResponseModel> gasPrice() async {
    const module = 'proxy';
    const action = 'eth_gasPrice';
    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
    };

    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }

  /// Makes a call or transaction, which won't be added to the blockchain and returns the used gas, which can be used for estimating the used gas
  ///
  /// `from` - Receiving Address
  ///
  /// `to` - Sending Address
  ///
  /// Example
  ///
  /// ```dart
  /// var res = bsc.estimateGas(
  ///     from: '0xdf4221b931b6ad4f4f221e2eb03913bd4368d0ba',
  ///     to: '0x109aa384b8786e55abfa1f0ac6cb0561e0a06e94',
  ///);
  ///
  ///```
  ///

  Future<BscScanRpcResponseModel> estimateGas({
    required String? to,
    required String? from,
    required String? data,
    String? value,
  }) async {
    const module = 'proxy';
    const action = 'eth_estimateGas';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'to': to,
      'from': from,
      'data': data,
      'value': value,
    };
    return (await get(query)).fold(
      (l) => BscScanRpcResponseModel.empty(),
      (r) => BscScanRpcResponseModel.fromJson(r),
    );
  }
}
