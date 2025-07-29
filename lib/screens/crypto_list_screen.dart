import 'package:flutter/material.dart';

import '../widgets/crypto_list/crypto_list_view.dart';

class CryptoListScreen extends StatelessWidget {
  const CryptoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CryptoListView(),
    );
  }
}
