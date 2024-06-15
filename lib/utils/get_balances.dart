import 'package:http/http.dart' as http;

Future<String> getBalances(String address ,String chain) async {
  final url = 'https://b549-197-232-89-82.ngrok-free.app/get_token_balance?chain=$chain&address=$address';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load balance');
  }
}
