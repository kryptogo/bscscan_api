import 'package:bscscan_api/bscscan_api.dart';
import 'package:bscscan_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('balance', () {
    final bsc = BscscanAPI(
      apiKey: 'YourApiKey',
    );
    test('.balance() returns data', () async {
      final bal = await bsc.balance(
        addresses: [
          '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
        ],
      );
      expect(bal, isNot(BscScanBalanceModel.empty()));
    });
  });

  test('.balance() throws Error', () async {
    final bsc = BscscanAPI(
      apiKey: '',
      enableLogs: true,
    );

    final bal = await bsc.balance(
      addresses: [
        '',
      ],
    );
    expect(bal, equals(BscScanBalanceModel.empty()));
  });
}
