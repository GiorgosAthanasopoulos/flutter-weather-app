import 'package:http/http.dart' as http;

const String baseUrl = 'https://api.ipify.org';

Future<String> fetchPublicIP() async {
  var response = await http.get(Uri.parse(baseUrl));
  return response.body;
}
