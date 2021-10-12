import 'package:bscscan_api/src/bscscan_api.dart';
import 'package:bscscan_api/src/core/helper/get_request.dart';
import 'package:bscscan_api/src/models/models.dart';

extension BscAccount on BscscanAPI {
  /// Returns the amount of Tokens a specific account owns.
  ///
  /// `address` - Contract address
  ///
  /// `tokenName` - Name of the token
  ///
  /// `contractAddress` - Contract address
  ///
  /// Example
  ///
  /// ```dart
  ///     final data = await bsc.tokenBalance(
  ///       address: '0x4366ddc115d8cf213c564da36e64c8ebaa30cdbd',
  ///       contractAddress: '0xe0b7927c4af23765cb51314a0e0521a9645f0e2a' // DGD contract address
  ///       tokenname: '',
  /// );
  /// ```
  ///

  Future<BscScanTokenBalanceModel> tokenBalance({
    required String? address,
    required String? contractAddress,
    String? tokenName,
  }) async {
    const module = 'account';
    const action = 'tokenbalance';
    const tag = 'latest';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
      'tag': tag,
    };

    if (contractAddress != null) {
      query.putIfAbsent('contractaddress', () => contractAddress);
    }

    if (tokenName != null) {
      query.putIfAbsent('tokenname', () => tokenName);
    }

    if (address != null) {
      query.putIfAbsent('address', () => address);
    }
    return (await get(query)).fold(
      (l) => BscScanTokenBalanceModel.empty(),
      (r) => BscScanTokenBalanceModel.fromJson(r),
    );
  }

  /// Returns the balance of a sepcific account
  ///
  /// `address` - Address
  ///
  /// Example
  ///
  /// ```dart
  ///
  /// final balance = bsc.balance(addresses: [
  ///     '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae'
  /// ]);
  /// ```
  ///

  Future<BscScanBalanceModel> balance({
    required List<String> addresses,
  }) async {
    const module = 'account';
    var action = 'balance';
    var address = '';

    if (addresses.isNotEmpty) {
      address = addresses.join(',');
      action = 'balancemulti';
    }

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
      'address': address,
    };

    return (await get(query)).fold(
      (l) => BscScanBalanceModel.empty(),
      (r) => BscScanBalanceModel.fromJson(r),
    );
  }

  /// Get a list of internal transactions
  ///
  /// `txhash` - Transaction hash. If specified then address will be ignored
  ///
  /// `address` - Transaction address
  ///
  /// `startblock` - start looking here
  ///
  /// `endblock` - end looking there
  ///
  /// `sort` - Sort asc/desc
  ///
  /// Example
  ///
  /// ```dart
  /// final txlist = bsc.txListInternal('0x40eb908387324f2b575b4879cd9d7188f69c8fc9d87c901b9e2daaea4b442170');
  /// ```
  ///

  Future<BscScanTxInternalModel> txListInternal({
    String? txhash,
    String? address,
    Object startblock = 0,
    String? endblock = 'latest',
    BscSort sort = BscSort.asc,
  }) async {
    const module = 'account';
    const action = 'txlistinternal';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    query.addAll({
      'startblock': startblock,
      'endblock': endblock,
      'sort': sort.str,
    });

    if (txhash != null) {
      query.putIfAbsent('txhash', () => txhash);
    } else {
      query.putIfAbsent('address', () => address);
    }

    query['txhash'] = txhash;

    return (await get(query)).fold(
      (l) => BscScanTxInternalModel.empty(),
      (r) => BscScanTxInternalModel.fromJson(r),
    );
  }

  /// Get a list of transactions for a specfic address
  ///
  /// `address` - Transaction address
  ///
  /// `startblock` - start looking here
  ///
  /// `endblock` - end looking there
  ///
  /// int `page` - Page number
  ///
  /// int `offset` - Max records to return
  ///
  /// `sort` - Sort asc/desc
  ///
  /// Example
  ///
  /// ```dart
  /// var txlist = bsc.txList(address:
  ///   '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae'
  /// );
  /// ```
  ///

  Future<BscScanTxListModel> txList({
    required String? address,
    Object startblock = 0,
    String? endblock,
    int page = 1,
    int offset = 100,
    BscSort sort = BscSort.asc,
  }) async {
    const module = 'account';
    const action = 'txlist';

    if (endblock != null) {
      endblock = 'latest';
    }

    final query = {
      'module': module,
      'action': action,
      'startblock': startblock,
      'endblock': endblock,
      'page': page,
      'offset': offset,
      'sort': sort.str,
      'address': address,
      'apiKey': apiKey
    };

    return (await get(query)).fold(
      (l) => BscScanTxListModel.empty(),
      (r) => BscScanTxListModel.fromJson(r),
    );
  }

  /// Get a list of blocks that a specific account has mineds
  ///
  /// Example
  ///
  /// ```dart
  /// var txlist = bsc.getMinedBlocks(
  ///   address:'0x9dd134d14d1e65f84b706d6f205cd5b1cd03a46b'
  /// );
  ///```
  /// `address` - Transaction hash
  ///

  Future<BscScanMintedBlocksModel> getMinedBlocks({
    required String address,
  }) async {
    const module = 'account';
    const action = 'getminedblocks';

    final query = {
      'module': module,
      'action': action,
      'address': address,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanMintedBlocksModel.empty(),
      (r) => BscScanMintedBlocksModel.fromJson(r),
    );
  }

  /// Get a list of "BEP20 - Token Transfer Events" by Address
  ///
  /// `address` - Account address
  ///
  /// `startblock` - start looking here
  ///
  /// `endblock` - end looking there
  ///
  /// `page` - Page number
  ///
  /// `offset` - Max records to return
  ///
  /// `sort` - Sort asc/desc
  ///
  /// `contractAddress` - Address of BEP20 token contract (if not specified lists transfers for all tokens)
  ///
  /// Example
  ///
  /// ```dart
  /// var txlist = bsc.tokenTx(
  ///   address: '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
  ///   contractAddress: '0x5F988D968cb76c34C87e6924Cc1Ef1dCd4dE75da'
  /// );
  /// ```
  ///
  /// (Returns up to a maximum of the last 10000 transactions only)
  ///

  Future<BscScanMintedTokenTxModel> tokenTx({
    required String? address,
    String? contractAddress,
    Object startblock = 0,
    String endblock = 'latest',
    int page = 1,
    int offset = 100,
    BscSort sort = BscSort.asc,
  }) async {
    const module = 'account';
    const action = 'tokentx';

    var query = {
      'module': module,
      'action': action,
      'startblock': startblock,
      'endblock': endblock,
      'page': 'page',
      'offset': offset,
      'sort': sort.str,
      'address': address,
      'apiKey': apiKey
    };

    if (contractAddress != null) {
      query.putIfAbsent('contractaddress', () => contractAddress);
    }

    return (await get(query)).fold(
      (l) => BscScanMintedTokenTxModel.empty(),
      (r) => BscScanMintedTokenTxModel.fromJson(r),
    );
  }

  /// Get a list of "BEP721 - Token Transfer Events" by Address
  ///
  /// `address` - Account address
  ///
  /// `startblock` - start looking here
  ///
  /// `endblock` - end looking there
  ///
  /// `page` - Page number
  ///
  /// `offset` - Max records to return
  ///
  /// `sort` - Sort asc/desc
  ///
  /// `contractAddress` - Address of BEP20 token contract (if not specified lists transfers for all tokens)
  ///
  /// Example
  ///
  /// ```dart
  /// var txlist = bsc.tokenTx(
  ///   address: '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
  ///   contractAddress: '0x5F988D968cb76c34C87e6924Cc1Ef1dCd4dE75da'
  /// );
  /// ```
  ///
  /// (Returns up to a maximum of the last 10000 transactions only)
  ///

  Future<BscscanTokenFftxModel> tokennFttx({
    required String? address,
    String? contractAddress,
    Object startblock = 0,
    String endblock = 'latest',
    int page = 1,
    int offset = 100,
    BscSort sort = BscSort.asc,
  }) async {
    const module = 'account';
    const action = 'tokennfttx';

    var query = {
      'module': module,
      'action': action,
      'startblock': startblock,
      'endblock': endblock,
      'page': 'page',
      'offset': offset,
      'sort': sort.str,
      'address': address,
      'apiKey': apiKey
    };

    if (contractAddress != null) {
      query.putIfAbsent('contractaddress', () => contractAddress);
    }

    return (await get(query)).fold(
      (l) => BscscanTokenFftxModel.empty(),
      (r) => BscscanTokenFftxModel.fromJson(r),
    );
  }
}
