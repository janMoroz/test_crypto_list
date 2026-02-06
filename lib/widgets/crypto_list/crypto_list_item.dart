import 'package:flutter/material.dart';
import 'package:test_crypto_list/utils.dart' as u;
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 16,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.40),
                  borderRadius: BorderRadius.circular(18),
                ),
                width: 56,
                height: 56,
                child: Text(
                  asset.symbol.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              Text(
                asset.name.toUpperCase(),
                style: const TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
              ),
            ],
          ),
          Text(
            u.formatPrice(asset.price),
            style: const TextStyle(
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
              fontSize: 17,
              letterSpacing: -0.41,
            ),
          ),
        ],
      ),
    );
  }
}
