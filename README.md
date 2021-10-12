# Etherscan Dart API

[![license](https://img.shields.io/github/license/Zfinix/etherscan_api.svg)](https://github.com/kryptogo/etherscan_api/blob/main/LICENSE.md)
[![GitHub tag](https://img.shields.io/github/tag/Zfinix/etherscan_api.svg)](https://github.com/kryptogo/etherscan_api)

[![GitHub issues](https://img.shields.io/github/issues/Zfinix/etherscan_api.svg)](https://github.com/kryptogo/etherscan_api/issues)

A dart library to access the [bscscan.com](https://bscscan.com/apis) apis.

```dart

import 'package:bscscan_api/bscscan_api.dart';

final bsc = BscscanAPI(apiKey: 'YourApiKey');

 final bal = await bsc.balance(
    addresses: [
      '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
    ],
  );

 print(val);

```

## For testnet usage

Supported TestNets:

- Test net

Latest

```dart

final bsc = BscscanAPI(
    apiKey: 'YourApiKey', // Api key
    chain: BscChain.testnet, // Network/chain
    enableLogs: true // Enable Logging
  );
```
