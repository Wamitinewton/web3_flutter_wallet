import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NFTListPage extends StatefulWidget {
  
  final String chain;

  const NFTListPage({
    Key? key,
    
    required this.chain, 
  }) : super(key: key);

  @override
  _NFTListPageState createState() => _NFTListPageState();
}

class _NFTListPageState extends State<NFTListPage> {
  List<dynamic> _nftList = [];

  @override
  void initState() {
    super.initState();
    _loadNFTList();
  }

  Future<void> _loadNFTList() async {
    final response = await http.get(
        Uri.parse(
            'https://b549-197-232-89-82.ngrok-free.app/get_user_nfts?chain=${widget.chain}'),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        _nftList = jsonData['result'];
      });
    } else {
      throw Exception('Failed to load NFT list');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var nft in _nftList)
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '${nft['name']}',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 200, // adjust the height as needed
                  child: nft['collection_banner_image'] != null
                      ? Image.network(
                          nft['collection_banner_image'],
                          fit: BoxFit.contain,
                        )
                      : const Center(
                          child: Text('Img'),
                        ),
                ),
                Text(
                  '${nft['metadata']}',
                ),
              ],
            ),
          ),
      ],
    );
  }
}