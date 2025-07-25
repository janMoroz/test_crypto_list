import 'package:flutter/material.dart';

import '../widgets/crypto_list/crypto_list_view.dart';

class CryptoListScreen extends StatelessWidget {
  const CryptoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crypto List',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: const CryptoListView(),
    );
  }
}
