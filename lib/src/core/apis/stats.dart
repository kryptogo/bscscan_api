import 'package:bscscan_api/src/bscscan_api.dart';
import 'package:bscscan_api/src/core/helper/get_request.dart';
import 'package:bscscan_api/src/models/models.dart';
import 'package:bscscan_api/src/models/stats/bnb_price_model.dart';

extension BscStats on BscscanAPI {
  /// Returns the supply of Tokens
  ///
  ///  `tokenname` - Name of the Token
  ///
  ///  `contractaddress` - Address from token contract
  ///
  /// Example
  ///
  /// ```dart
  /// var supply = bsc.tokenSupply(
  ///     tokenname: null,
  ///     contractAddress: '0x57d90b64a1a57749b0f932f1a3395792e12e7055'
  /// );
  /// ```
  /// Result returned in Wei, to get value in BNB divide resultAbove/1000000000000000000)
  ///

  Future<BscScanSupplyModel> tokenSupply({
    String? tokenName,
    String? contractAddress,
  }) async {
    const module = 'stats';
    const action = 'tokensupply';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    if (tokenName != null) {
      query.putIfAbsent('tokenname', () => tokenName);
    }

    if (contractAddress != null) {
      query.putIfAbsent('contractaddress', () => contractAddress);
    }

    return (await get(query)).fold(
      (l) => BscScanSupplyModel.empty(),
      (r) => BscScanSupplyModel.fromJson(r),
    );
  }

  /// Returns total supply of bnb
  ///
  /// Example
  ///
  ///``` dart
  /// var supply = bsc.bnbSupply();
  ///```
  ///

  Future<BscScanSupplyModel> bnbSupply() async {
    const module = 'stats';
    const action = 'bnbsupply';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanSupplyModel.empty(),
      (r) => BscScanSupplyModel.fromJson(r),
    );
  }

  /// Returns the price of ether now
  ///
  /// Example
  ///
  /// ```dart
  /// var price = bsc.ethprice();
  /// ```
  ///

  Future<BscScanPriceModel> bnbPrice() async {
    const module = 'stats';
    const action = 'bnbprice';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => BscScanPriceModel.empty(),
      (r) => BscScanPriceModel.fromJson(r),
    );
  }
}
