class CryptoAsset {
  final String id;
  final String symbol;
  final String name;
  final double price;

  CryptoAsset({
    required this.id,
    required this.symbol,
    required this.name,
    required this.price,
  });

  factory CryptoAsset.fromJson(Map<String, dynamic> json) {
    return CryptoAsset(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      price: (json['current_price'] ?? 0).toDouble(),
    );
  }
}
