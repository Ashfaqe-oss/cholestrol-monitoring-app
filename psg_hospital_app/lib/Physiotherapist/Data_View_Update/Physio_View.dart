import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

import '../../CurrentPatientInfo.dart';

class Physio_View {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;
  Future GetAssessment(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetAssessment");
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
    PhysioView.Assessment = map["data"];
    print(PhysioView.Assessment);
  }

  Future UpdateAssessment(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateAssessment");
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

  Future GetGoals(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetGoals");
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
    PhysioView.Goals = map["data"];
    print(PhysioView.Assessment);
  }

  Future UpdateGoals(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateGoals");
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

  Future GetDay1(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDay1");
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
    PhysioView.Day1 = map["data"];
    print(PhysioView.Day1);
  }

  Future UpdateDay1(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDay1");
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

  Future GetDay2(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDay2");
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
    PhysioView.Day2 = map["data"];
    print(PhysioView.Day2);
  }

  Future UpdateDay2(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDay2");
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

  Future GetDay3(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDay3");
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
    PhysioView.Day3 = map["data"];
    print(PhysioView.Day3);
  }

  Future UpdateDay3(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDay3");
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

  Future GetDay4(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDay4");
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
    PhysioView.Day4 = map["data"];
    print(PhysioView.Day4);
  }

  Future UpdateDay4(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDay4");
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

  Future GetDay5(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDay5");
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
    PhysioView.Day5 = map["data"];
    print(PhysioView.Day5);
  }

  Future UpdateDay5(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDay5");
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

  Future GetSix(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetSix");
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
    PhysioView.SixMin = map["data"];
    print(PhysioView.Assessment);
  }

  Future UpdateSix(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateSix");
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

  Future GetDischarge(/*String pid*/) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDischarge");
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
    PhysioView.DischargeCheck = map["data"];
    print(PhysioView.DischargeCheck);
  }

  Future UpdateDischarge(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDischarge");
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
