import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../CurrentPatientInfo.dart';

class Dietitian_Upload {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;

  Future DietitianAuth(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/DietitianAuth");
    http.Response response = await httpClient.post(restAPIURL,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json;charset=UTF-8",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "POST, OPTIONS"
        },
        body: jsonEncode(body));
    print("${response.statusCode}");
    print("${response.body}");
    return response.body;
  }

  Future UploadSection1(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadSection1");
    http.Response response = await httpClient.post(restAPIURL,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json;charset=UTF-8",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "POST, OPTIONS"
        },
        body: jsonEncode(body));
    print("${response.statusCode}");
    print("${response.body}");
    return response.body;
  }

  Future UploadDietPattern(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDietPattern");
    http.Response response = await httpClient.post(restAPIURL,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json;charset=UTF-8",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "POST, OPTIONS"
        },
        body: jsonEncode(body));
    print("${response.statusCode}");
    print("${response.body}");
    return response.body;
  }

  Future UploadFoodQuantity(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadFoodQuantity");
    http.Response response = await httpClient.post(restAPIURL,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json;charset=UTF-8",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "POST, OPTIONS"
        },
        body: jsonEncode(body));
    print("${response.statusCode}");
    print("${response.body}");
    return response.body;
  }

  Future UploadFoodPreference(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadFoodPreference");
    http.Response response = await httpClient.post(restAPIURL,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json;charset=UTF-8",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "POST, OPTIONS"
        },
        body: jsonEncode(body));
    print("${response.statusCode}");
    print("${response.body}");
    return response.body;
  }
}
