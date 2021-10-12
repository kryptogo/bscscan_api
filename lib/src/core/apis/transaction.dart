import 'package:bscscan_api/src/bscscan_api.dart';
// import 'package:bscscan_api/src/core/helper/get_request.dart';
// import 'package:bscscan_api/src/models/models.dart';

extension BscTransaction on BscscanAPI {
  /// Returns the status of a specific transaction hash
  ///
  /// `txhash` - Transaction hash
  ///

  // Future<BscScanTxStatusModel> getStatus({
  //   required String? txhash,
  // }) async {
  //   const module = 'transaction';
  //   const action = 'getstatus';

  //   Map<String, dynamic>? query = {
  //     'txhash': txhash,
  //     'module': module,
  //     'action': action,
  //     'apiKey': apiKey,
  //   };

  //   return (await get(query)).fold(
  //     (l) => BscScanTxStatusModel.empty(),
  //     (r) => BscScanTxStatusModel.fromJson(r),
  //   );
  // }
}
