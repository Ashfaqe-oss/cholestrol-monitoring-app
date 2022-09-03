import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../CurrentPatientInfo.dart';

class Doctor_Upload {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;
  /*
  Future Fetch_Doctor_PatientInfo() async {
    final Uri restAPIURL =
        Uri.parse("http://192.168.0.100:3000/GetPatientInfo");
    http.Response response = await httpClient.get(restAPIURL);
    final Map parsed = await json.decode(response.body);
    //Patient_Med_Doctor = parsed[];
  }

   */
  Future Doctor_Auth(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/DoctorAuth");
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

  Future UploadPatientDemoGraphicData(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadDemograph");
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

  Future UploadPatientRiskFactors(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadRiskFactors");
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

  Future UploadPatientWomenInfo(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadWomenSpecific");
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

  Future UploadPatientFamilyHistory(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadFamilyHistory");
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

  Future UploadPatientClinicalInfo(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadClinicalInfo");
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

  Future UploadPatientRespPhy(Map body) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UploadRespPhys");
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

  Future UploadPatientInv(Map body) async {
    final Uri restAPIURL =
        Uri.parse(ipaddress + ":3000/UploadInvestigationInformation");
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

/*
  Future AddPatient_Med_Doctor2(Map body) async {
    final Uri restAPIURL =
        Uri.parse("http://192.168.0.100:3000/InsertPatientInfo2");
    http.Response response = await httpClient.put(restAPIURL,
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
*/
  /*
  Future AddPatient_Med_Doctor3(Map body) async {
    final Uri restAPIURL =
        Uri.parse("http://192.168.0.100:3000/InsertPatientInfo3");
    http.Response response = await httpClient.put(restAPIURL,
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


   */
}
