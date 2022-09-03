import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../CurrentPatientInfo.dart';

class Physiotherapist_Upload {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;

  Future Physio_Auth(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/PhysioAuth");
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

  Future UploadAssessment(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadAssessment");
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

  Future UploadGoals(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadGoals");
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

  Future UploadDay1(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDay1");
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

  Future UploadDay2(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDay2");
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

  Future UploadDay3(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDay3");
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

  Future UploadDay4(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDay4");
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

  Future UploadDay5(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDay5");
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

  Future UploadWalkTest(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadWalkTest");
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

  Future UploadDischargeCheckList(Map body) async {
    final Uri restAPIURL =
        Uri.parse(ipaddress + ":3000/UploadDischargeCheckList");
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
