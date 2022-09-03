import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:psg_hospital_app/Dietitian/Data_View_Update/View_Values.dart';

import '../../CurrentPatientInfo.dart';

class Dietitian_View {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;

  Future GetSection1(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetSection1");
    http.Response response = await httpClient.get(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    Map<String, dynamic> map = json.decode(response.body);
    DieView.Section1 = map["data"];
    print(DieView.Section1);
  }

  Future UpdateSection1(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateSection1");
    http.Response response = await httpClient.put(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "index": index,
        "key": Colval,
        "value": UpdatedVal,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    print(json.decode(response.body));
  }

  Future GetPattern(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetPattern");
    http.Response response = await httpClient.get(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    Map<String, dynamic> map = json.decode(response.body);
    DieView.Pattern = map["data"];
    print(DieView.Pattern);
  }

  Future UpdatePattern(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdatePattern");
    http.Response response = await httpClient.put(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "index": index,
        "key": Colval,
        "value": UpdatedVal,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    print(json.decode(response.body));
  }

  Future GetFoodQuantity(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetFoodQuantity");
    http.Response response = await httpClient.get(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    Map<String, dynamic> map = json.decode(response.body);
    DieView.FoodQuantity = map["data"];
    print(DieView.FoodQuantity);
  }

  Future UpdateFoodQuantity(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateFoodQuantity");
    http.Response response = await httpClient.put(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "index": index,
        "key": Colval,
        "value": UpdatedVal,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    print(json.decode(response.body));
  }

  Future GetFoodPreference(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetFoodPreference");
    http.Response response = await httpClient.get(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    Map<String, dynamic> map = json.decode(response.body);
    DieView.FoodPreference = map["data"];
    print(DieView.FoodPreference);
  }

  Future UpdateFoodPreference(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateFoodPreference");
    http.Response response = await httpClient.put(
      restAPIURL,
      headers: {
        "PatientID": CurrentPatientInfo.PatientID,
        "index": index,
        "key": Colval,
        "value": UpdatedVal,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    print(json.decode(response.body));
  }
}
