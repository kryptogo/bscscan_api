import 'package:bscscan_api/src/models/models.dart';

import 'package:bscscan_api/src/core/helper/get_request.dart';
import 'package:bscscan_api/src/bscscan_api.dart';

extension BscBlock on BscscanAPI {
  ///
  /// Find the block reward for a given address and block
  ///
  /// `address` - Address of the block
  ///
  /// `blockno` - Block number
  ///

  Future<BscScanBlockRewardModel> getBlockReward({
    String? address,
    Object? blockno = 0,
  }) async {
    const module = 'block';
    const action = 'getblockreward';

    final query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    if (address != null) {
      query.putIfAbsent('address', () => address);
    }

    if (blockno != null) {
      query.putIfAbsent('blockno', () => '$blockno');
    }

    return (await get(query)).fold(
      (l) => BscScanBlockRewardModel.empty(),
      (r) => BscScanBlockRewardModel.fromJson(r),
    );
  }
}
