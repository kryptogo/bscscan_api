import 'package:bscscan_api/bscscan_api.dart';
import 'package:bscscan_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('proxy', () {
    final bsc = BscscanAPI(
      apiKey: 'YourApiKey',
    );
    test('.getMinedBlocks() returns data', () async {
      final bal = await bsc.getMinedBlocks(
        address: '0x9dd134d14d1e65f84b706d6f205cd5b1cd03a46b',
      );
      expect(bal, isNot(BscScanMintedBlocksModel.empty()));
    });
  });
}
