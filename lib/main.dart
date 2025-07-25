import 'package:flutter/material.dart';

import 'screens/crypto_list_screen.dart';

void main() {
  runApp(const CryptoListApp());
}

class CryptoListApp extends StatelessWidget {
  const CryptoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CryptoListScreen(),
    );
  }
}
