import 'package:dio/dio.dart';
import 'package:test_crypto_list/models/crypto_asset.dart';

class CryptoService {
  final Dio _dio = Dio();

  Future<List<CryptoAsset>> fetchAssets({required int page, int perPage = 15}) async {
    final response = await _dio.get(
      'https://api.coingecko.com/api/v3/coins/markets',
      queryParameters: {
        'vs_currency': 'usd',
        'order': 'market_cap_desc',
        'per_page': perPage,
        'page': page,
        'sparkline': false,
      },
    );
    final data = response.data as List;
    return data.map((json) => CryptoAsset.fromJson(json)).toList();
  }
}

