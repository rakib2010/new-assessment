import 'dart:convert';
import 'package:assessment_project/layers/domain/models/hotels.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../data/datasources/remote_services/remote_services.dart';
import '../network handler/http_exception_handler.dart';







class HomeController extends GetxController{
  var isLoading = false.obs;
  var hotels = Hotels();
  RxList<dynamic> hotelList = [].obs;




  @override
  void onInit() {
    getHotelList();
    super.onInit();
  }



  Future<void> getHotelList() async {
    
    try {
      isLoading(true);
      final response = await RemoteServices.fetchData();
      if (response.statusCode == 200) {
        var res = jsonDecode(response.body);
        hotelList.assignAll(res);
        //hotels = Hotels.fromJson(res);
        print('This is response ========= $hotelList');
      }
    } catch (e) {
      HttpExceptionHandler.handleException(e);
      if (kDebugMode) {
        print(e.toString());
      }
    } finally {
      isLoading(false);
    }
  }

  
}