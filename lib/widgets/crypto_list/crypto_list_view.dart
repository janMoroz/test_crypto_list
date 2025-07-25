import 'package:flutter/material.dart';

import '../../models/crypto_asset.dart';
import '../../service/crypto_service.dart';
import '../../utils.dart';
import 'crypto_list_item.dart';

class CryptoListView extends StatefulWidget {
  const CryptoListView({super.key});

  @override
  State<CryptoListView> createState() => _CryptoListViewState();
}

class _CryptoListViewState extends State<CryptoListView> {
  final CryptoService _service = CryptoService();
  final ScrollController _controller = ScrollController();
  final List<CryptoAsset> _assets = [];
  final List<Color> _colors = [];
  int _page = 1;
  bool _isLoading = false;
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _loadMore();
    _controller.addListener(() {
      if (_controller.position.pixels >=
              _controller.position.maxScrollExtent - 200 &&
          !_isLoading &&
          _hasMore) {
        _loadMore();
      }
    });
  }

  Future<void> _loadMore() async {
    setState(() => _isLoading = true);
    final newAssets = await _service.fetchAssets(page: _page);
    if (newAssets.isEmpty) {
      setState(() => _hasMore = false);
    } else {
      setState(() {
        _assets.addAll(newAssets);
        _colors.addAll(
          List.generate(newAssets.length, (_) => generateRandomColor()),
        );
        _page++;
      });
    }
    setState(() => _isLoading = false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller,
      itemCount: _assets.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= _assets.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return CryptoListItem(
          asset: _assets[index],
          color: _colors[index],
        );
      },
    );
  }
}
