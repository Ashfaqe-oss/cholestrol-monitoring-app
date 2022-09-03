import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:psg_hospital_app/Counsellor/Data_View_Update/View_Values.dart';

import '../../CurrentPatientInfo.dart';

class Counsellor_View {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;
  Future GetPatientScore(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetPatientScore");
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
    CounsView.PatientScore = map["data"];
    print(CounsView.PatientScore);
  }

  Future UpdatePatientScore(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdatePatientScore");
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

  Future GetHabit(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetHabit");
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
    CounsView.Habit = map["data"];
    print(CounsView.Habit);
  }

  Future UpdateHabit(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateHabit");
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

  Future GetTimeAct(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetTimeAct");
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
    CounsView.TimeActivites = map["data"];
    print(CounsView.TimeActivites);
  }

  Future UpdateTimeAct(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateTimeAct");
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

  Future GetEco(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetEco");
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
    CounsView.EconomicStatus = map["data"];
    print(CounsView.EconomicStatus);
  }

  Future UpdateEco(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateEco");
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
