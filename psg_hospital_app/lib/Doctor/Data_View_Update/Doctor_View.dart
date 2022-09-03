import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import '../../CurrentPatientInfo.dart';

class Doctor_View {
  final httpClient = http.Client();
  final String ipaddress = "http://" + CurrentPatientInfo.IP;
  Future GetProfileInfo(String PatientID) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetProfileInfo");
    http.Response response = await httpClient.get(
      restAPIURL,
      headers: {
        "PatientID": PatientID,
        "Accept": "application/json",
        "Content-Type": "application/json;charset=UTF-8",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
    );
    Map<String, dynamic> map = json.decode(response.body);
    DocView.ProfileInfo = map["data"];
    print(DocView.ProfileInfo);
  }

  Future GetRiskFactors() async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetRiskFactors");
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
    DocView.RiskFactors = map["data"];
    print(DocView.RiskFactors);
  }

  Future UpdateRiskFactors(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateRiskFactors");
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

  Future GetWomenSpecific() async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetWomenInfo");
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
    DocView.WomenInfo = map["data"];
    print(DocView.WomenInfo);
  }

  Future UpdateWomenSpecific(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateWomenInfo");
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

  Future GetFamilyHistory() async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetFamilyHistory");
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
    DocView.FamilyHistory = map["data"];
    print(DocView.FamilyHistory);
  }

  Future UpdateFamilyHistory(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateFamilyHistory");
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

  Future UpdateSiblings(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateSiblings");
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

  Future GetClinicInfo() async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetClinicInfo");
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
    DocView.ClinicalExamination = map["data"];
    print(DocView.ClinicalExamination);
  }

  Future UpdateClinicInfo(
      String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateClinicInfo");
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

  Future GetRespInfo() async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetRespInfo");
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
    DocView.RespInfo = map["data"];
    print(DocView.RespInfo);
  }

  Future UpdateRespInfo(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateRespInfo");
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

  Future GetDigaInv() async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/GetDigaInv");
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
    DocView.Investigation = map["data"];
    print(DocView.Investigation);
  }

  Future UpdateDigaInv(String index, String Colval, String UpdatedVal) async {
    final Uri restAPIURL = Uri.parse(ipaddress + ":3000/UpdateDigaInv");
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
