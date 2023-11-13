import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class RemoteServices extends GetxService{
  static var client = http.Client();
  static String hotelsCardApi = 'https://www.hotelsgo.co/test/hotels';


  static Future<http.Response> fetchData()async{
    final response = await client.get(Uri.parse(hotelsCardApi));
    return response;

  }
}