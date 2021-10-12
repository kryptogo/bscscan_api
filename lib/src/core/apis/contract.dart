import 'package:bscscan_api/src/bscscan_api.dart';
import 'package:bscscan_api/src/models/contract/abi_model.dart';
import 'package:bscscan_api/src/core/helper/get_request.dart';
import 'package:bscscan_api/src/models/contract/source_code_model.dart';

extension BscContract on BscscanAPI {
  /// Returns the ABI/Interface of a given contract
  ///
  /// `address` - Contract address
  ///
  /// Example
  ///
  /// ```
  /// api.contract
  ///  ..getAbi('0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359')
  ///  ..at('0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359')
  ///  ..memberId('0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359')
  /// ```
  ///
  Future<BscScanAbiModel> getAbi({
    required String? address,
  }) async {
    const module = 'contract';
    const action = 'getabi';

    var query = {
      'module': module,
      'action': action,
      'address': address,
      'apiKey': apiKey
    };

    return (await get(query)).fold(
      (l) => BscScanAbiModel.empty(),
      (r) => BscScanAbiModel.fromJson(r),
    );
  }

  /// Get Contract Source Code for Verified Contract Source Codes
  ///
  /// `address` - Contract address
  ///
  /// Example
  ///
  /// ```
  /// api.contract.getSourceCode(
  ///     address: '0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359'
  /// )
  /// ```
  ///
  Future<BscscanSourceCodeModel> getSourceCode({
    required String? address,
  }) async {
    const module = 'contract';
    const action = 'getsourcecode';

    var query = {
      'module': module,
      'action': action,
      'address': address,
      'apiKey': apiKey
    };

    return (await get(query)).fold(
      (l) => BscscanSourceCodeModel.empty(),
      (r) => BscscanSourceCodeModel.fromJson(r),
    );
  }
}
