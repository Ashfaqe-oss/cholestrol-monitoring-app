import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../CurrentPatientInfo.dart';

class Counsellor_Upload {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;

  Future CounsellorAuth(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/CounsellorAuth");
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

  Future UploadPatientScore(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadPatientScore");
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

  Future UploadHabits(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadHabits");
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

  Future UploadTimeActivites(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadTimeActivites");
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

  Future UploadEconomicStatus(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadEconomicStatus");
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
