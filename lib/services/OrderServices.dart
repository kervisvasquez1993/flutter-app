import 'package:app_delivery_redvital/global/environment.dart';
import 'package:http/http.dart' as http;

class OrderServices {
  final url = Uri.https(Environment.apiUrl, '/orders');
  dynamic orderAll() async {
    final response = await http.get(url, headers: {
      'status': 'UNASSIGNED',
    });

    print(response);

    return [];
  }
}
