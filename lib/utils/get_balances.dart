import 'package:http/http.dart' as http;

Future<String> getBalances(String address ,String chain) async {
  final url = 'http://127.0.0.1:5002/get_token_balance?chain=$chain&address=$address';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load balance');
  }
}
