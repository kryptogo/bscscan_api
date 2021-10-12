import 'core/helper/get_request.dart';

class BscscanAPI {
  final String apiKey;
  final BscChain chain;
  final bool enableLogs;
  final Duration? timeout;

  BscscanAPI({
    required this.apiKey,
    this.chain = BscChain.mainnet,
    this.enableLogs = true,
    this.timeout,
  });
}

/// BscScan sort order
enum BscSort { asc, desc }

/// Describe num extension
extension DescribeEnum on Object {
  String get str => describeEnum(this);
}

/// BSC chain type
enum BscChain { mainnet, testnet }

extension BscChainString on BscChain {
  String get chainName => str;
  String get chainApiUrl => BSC_API_URLS[chainName]!;
}

// This method exists as a workaround for https://github.com/dart-lang/sdk/issues/30021
/// Returns a short description of an enum value.
///
/// Strips off the enum class name from the `enumEntry.toString()`.
///
/// {@tool snippet}
///
/// ```dart
/// enum BscChain {
///   mainnet, testnet
/// }
///
/// void validateDescribeEnum() {
///   assert(BscChain.testnet.toString() == 'BscChain.testnet');
///   assert(describeEnum(BscChain.testnet) == 'testnet');
/// }
/// ```
/// {@end-tool}
String describeEnum(Object enumEntry) {
  final description = enumEntry.toString();
  final indexOfDot = description.indexOf('.');

  assert(
    indexOfDot != -1 && indexOfDot < description.length - 1,
    'The provided object "$enumEntry" is not an enum.',
  );

  return description.substring(indexOfDot + 1);
}
