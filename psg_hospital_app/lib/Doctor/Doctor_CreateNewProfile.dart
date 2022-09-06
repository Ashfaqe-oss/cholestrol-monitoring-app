import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/CurrentPatientInfo.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';

import '../widget/button_widget.dart';
import '../widget/textfield_widget.dart';
import 'Data_Upload/Values.dart';
import 'Doctor_Category/View_Add_Delete.dart';

class CreateNewPatient_Info extends StatefulWidget {
  const CreateNewPatient_Info({Key? key}) : super(key: key);
  @override
  _CreateNewPatient_InfoState createState() => _CreateNewPatient_InfoState();
}

class _CreateNewPatient_InfoState extends State<CreateNewPatient_Info> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String PatientID = "";
  var randomnum = Random();
  final List<String> Gender = ['Male', 'Female', 'Transgender'];
  final List<String> Ward = [
    "High",
    "Medium",
    "Low"
  ];
  String curr_ward = "";
  TextEditingController dateinput = TextEditingController();
  TextEditingController PatientName = TextEditingController();
  TextEditingController Age = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController opno = TextEditingController();
  TextEditingController ipno = TextEditingController();
  TextEditingController ward = TextEditingController();
  TextEditingController Ethnicity = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Phonenumber = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: const Color(0xff4A64FE),
            centerTitle: true,
            elevation: 0,
            title: Text(
              "New Patient",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Demographic Data",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextFieldWidget_M(
                              catkey: "DEMOGRAPH",
                              index: 0,
                              Num_Lines: 1,
                              error: false,
                              Num: false,
                              hintText: 'Patient Name',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              onChanged: () {},
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_Date(
                                LabelText: "Date",
                                catkey: "DEMOGRAPH",
                                index: 1),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              catkey: "DEMOGRAPH",
                              index: 2,
                              Num: true,
                              hintText: 'Age',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff4A64FE)),
                                ),
                                labelText: "Gender",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Gender[0],
                              items: Gender.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  Doctor.DemographicData[3] = val.toString();
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              catkey: "DEMOGRAPH",
                              index: 4,
                              Num: false,
                              hintText: 'O P Number',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              catkey: "DEMOGRAPH",
                              index: 5,
                              Num: false,
                              hintText: 'I P Number',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff4A64FE)),
                                ),
                                labelText: "Cholestrol Level",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Ward[0],
                              items: Ward.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  curr_ward = val.toString();
                                  Doctor.DemographicData[6] = val.toString();
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            curr_ward == "Medium" ||
                                    curr_ward == "Low"
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    catkey: "DEMOGRAPH",
                                    index: 7,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                  )
                                : Container(),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              catkey: "DEMOGRAPH",
                              index: 8,
                              Num: false,
                              hintText: 'Ethnicity/Race',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 3,
                              error: false,
                              catkey: "DEMOGRAPH",
                              index: 9,
                              Num: false,
                              hintText: 'Address',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              catkey: "DEMOGRAPH",
                              index: 10,
                              Num: true,
                              hintText: 'Phone Number',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            String Pid = randomnum.nextInt(1000).toString();
                            Doctor_Upload upload = new Doctor_Upload();
                            upload.UploadPatientDemoGraphicData({
                              "PatientID": "REHAB" + Pid,
                              "PatientName": Doctor.DemographicData[0],
                              "Date": Doctor.DemographicData[1],
                              "Age": Doctor.DemographicData[2],
                              "Gender": Doctor.DemographicData[3],
                              "OPNumber": Doctor.DemographicData[4],
                              "IPNumber": Doctor.DemographicData[5],
                              "Ward": Doctor.DemographicData[6],
                              "Description": Doctor.DemographicData[7],
                              "Ethnicity": Doctor.DemographicData[8],
                              "Address": Doctor.DemographicData[9],
                              "PhoneNumber": Doctor.DemographicData[10]
                            }).then((value) {
                              if (jsonDecode(value)["result"] == "SUCCESS") {
                                CurrentPatientInfo.PatientID = "REHAB" + Pid;
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => AddDeleteEdit()),
                                );
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                    "Failed to Create Profile",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.red,
                                ));
                              }
                            });
                          },
                          child: ButtonWidget(
                            title: 'Save',
                            hasBorder: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
