import 'package:flutter/material.dart';
import '../../models/crypto_asset.dart';

class CryptoListItem extends StatelessWidget {
  final CryptoAsset asset;
  final Color color;

  const CryptoListItem({
    super.key,
    required this.asset,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.10),
            borderRadius: BorderRadius.circular(18),
          ),
          width: 56,
          height: 56,
        ),
        title: Text(
          asset.name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: Text(
          '\$${asset.price.toStringAsFixed(2)}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
