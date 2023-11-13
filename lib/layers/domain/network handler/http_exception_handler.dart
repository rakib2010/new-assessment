import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';




class HttpExceptionHandler {
  static String? errorMessage;

  static void handleException(dynamic exception) {
    if (exception is TimeoutException) {
      errorMessage = 'Request timed out';
    } else if (exception is SocketException) {
      errorMessage = 'No internet connection. Please check your network settings and try again.';
    } else if (exception is FormatException) {
      errorMessage = 'Unexpected format';
    } else if (exception is HttpException) {
      errorMessage = 'Internal server error';
    } else if (exception is ClientException) {
      errorMessage = 'There was a problem loading the data. Please try again later';
    } else if (exception is PlatformException) {
      errorMessage = 'Failed to get device information';
    } else {
      errorMessage = 'An unexpected error occurred. Please restart the app and try again';
    }

    Get.defaultDialog(
      title: 'Error !',
      content: Text(errorMessage.toString()),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
