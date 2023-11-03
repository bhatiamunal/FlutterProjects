import 'package:http/http.dart' show Client;
import '../Model/User.dart';
import 'package:intl/intl.dart';

class ServiceForAPI {
  static const String baseUrl = "https://jsonplaceholder.typicode.com";
  //static const String baseUrl = "http://10.20.88.72/Login";
  static Client client = Client();
  static Future getProfiles() async
  {
     final response = await client.get(Uri.parse("$baseUrl/todos") );
     if (response.statusCode == 200) {
       return userFromJson(response.body);
     }
     else {
       return null;
     }
  }

}