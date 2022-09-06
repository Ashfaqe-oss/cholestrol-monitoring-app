import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_Upload/Values.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Counsellor_Upload.dart';

class SocioEconomicStatus extends StatefulWidget {
  const SocioEconomicStatus({Key? key}) : super(key: key);
  @override
  _SocioEconomicStatusState createState() => _SocioEconomicStatusState();
}

class _SocioEconomicStatusState extends State<SocioEconomicStatus> {
  String SocioeconomicClass = "";
  List<String> YS = ["Yes", "No"];
  final List<String> Slt1 = [
    "Illiterate",
    "Literate, no formal education",
    "10th std",
    "12th std",
    "Bachelor's Degree",
    "Master's Degree",
    "Ph.D. or higher",
    "Others",
  ];
  final List<String> Slt2 = [
    "Single, never married",
    "Divorced",
    "Seperated",
    "Married or Cohabitating",
    "Widow or widower",
    "Others",
  ];
  final List<String> Slt3 = [
    "Full-time employment",
    "Self-employed",
    "Part-time employment",
    "Underemployed",
    "Full time freelancing",
    "Unemployed (looking for work)",
    "Unemployed (not looking for work)",
    "Student",
    "Inability to work"
  ];
  final List<String> Slt4 = ["1", "1 - 3", "4 - 6", "> 6"];

  int EducationScore = 0, OccupationScore = 0, CPIScore = 0;
  final List<String> Slt5 = [
    "Professional degree",
    "Graduate or postgraduate",
    "Intermediate or post high school diploma",
    "High school certificate",
    "Middle school certificate",
    "Primary school certificate",
    "Illiterate"
  ];

  final List<int> Slt5_Score = [7, 6, 5, 4, 3, 2, 1];

  final List<String> Slt6 = [
    "Professional (white collar)",
    "Semi-professional",
    "Clerical, shop-owner/farm",
    "Skilled worker",
    "Semi-skilled worker",
    "Unskilled worker",
    "Unemployed"
  ];

  final List<int> Slt6_Score = [10, 6, 5, 4, 3, 2, 1];

  final List<String> Slt7 = [
    ">=52,734",
    "26,355-52,733",
    "19,759-26,354",
    "13,161-19,758",
    "7,887-13,160",
    "2,641-7,886",
    "≤2,640"
  ];

  final List<int> Slt7_Score = [12, 10, 6, 4, 3, 2, 1];

  bool Others1 = false;
  bool Others2 = false;
  bool Others3 = false;
  bool Others4 = false;
  bool Others5 = false;
  bool Others6 = false;
  bool Others7 = false;
  bool Others8 = false;
  bool Others9 = false;

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  bool mainPassObscure = true;
  bool confirmPassObscure = true;

  @override
  void initState() {
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
          appBar: AppBar(
            backgroundColor: const Color(0xff4A64FE),
            centerTitle: true,
            elevation: 0,
            title: Text(
              "DEPARTMENT OF CARDIOLOGY",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 25,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "BASIC SOCIO DEMOGRAPHIC DEATILS",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "What is the highest degree or level of education you have completed?",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0, color: Color(0xff4A64FE)),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: const Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt1[0],
                              items: Slt1.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[1] = val.toString();
                                setState(() {
                                  if (val == "Others") {
                                    Others1 = true;
                                  } else {
                                    Others1 = false;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Others1
                                ? TextFieldWidget_M(
                                    Num_Lines: 1,
                                    onChanged: (value) {},
                                    error: false,
                                    index: 2,
                                    Num: false,
                                    hintText: 'Others',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'COUNSELLOR3',
                                  )
                                : Container(),
                            const SizedBox(
                              height: 18.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "What is your marital status?",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0,
                                    color: const Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: const Color(0xff4A64FE)),
                                ),
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt2[0],
                              items: Slt2.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[3] = val.toString();

                                setState(() {
                                  if (val == "Others") {
                                    Others2 = true;
                                  } else {
                                    Others2 = false;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Others2
                                ? TextFieldWidget_M(
                                    Num_Lines: 1,
                                    onChanged: (value) {},
                                    error: false,
                                    index: 4,
                                    Num: false,
                                    hintText: 'Others',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'COUNSELLOR3',
                                  )
                                : Container(),
                            const SizedBox(
                              height: 18.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "Which of the following best describes your current employment status?",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0, color: Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: const Color(0xff4A64FE)),
                                ),
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt3[0],
                              items: Slt3.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[5] = val.toString();
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "Total numbers in the family?",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0, color: Color(0xff4A64FE)),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt4[0],
                              items: Slt4.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[6] = val.toString();

                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "Education of head of family",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0, color: Color(0xff4A64FE)),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt5[0],
                              items: Slt5.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[7] = val.toString();

                                setState(() {
                                  if (val == "Professional degree") {
                                    EducationScore = Slt5_Score[0];
                                  }
                                  if (val == "Graduate or postgraduate") {
                                    EducationScore = Slt5_Score[1];
                                  }
                                  if (val ==
                                      "Intermediate or post high school diploma") {
                                    EducationScore = Slt5_Score[2];
                                  }
                                  if (val == "High school certificate") {
                                    EducationScore = Slt5_Score[3];
                                  }
                                  if (val == "Middle school certificate") {
                                    EducationScore = Slt5_Score[4];
                                  }
                                  if (val == "Primary school certificate") {
                                    EducationScore = Slt5_Score[5];
                                  }
                                  if (val == "Illiterate") {
                                    EducationScore = Slt5_Score[6];
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          26 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          29) {
                                    SocioeconomicClass = "Upper Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          16 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          25) {
                                    SocioeconomicClass = "Upper Middle Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          11 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          15) {
                                    SocioeconomicClass = "Lower Middle Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          5 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          10) {
                                    SocioeconomicClass = "Upper Lower Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          1 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          4) {
                                    SocioeconomicClass = "Lower Class";
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const SizedBox(
                              height: 18.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "Occupation of head of family",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0,
                                    color: const Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: const Color(0xff4A64FE)),
                                ),
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt6[0],
                              items: Slt6.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[8] = val.toString();

                                setState(() {
                                  if (val == "Professional (white collar)") {
                                    OccupationScore = Slt6_Score[0];
                                  }
                                  if (val == "Semi-professional") {
                                    OccupationScore = Slt6_Score[1];
                                  }
                                  if (val == "Clerical, shop-owner/farm") {
                                    OccupationScore = Slt6_Score[2];
                                  }
                                  if (val == "Skilled worker") {
                                    OccupationScore = Slt6_Score[3];
                                  }
                                  if (val == "Semi-skilled worker") {
                                    OccupationScore = Slt6_Score[4];
                                  }
                                  if (val == "Unskilled worker") {
                                    OccupationScore = Slt6_Score[5];
                                  }
                                  if (val == "Unemployed") {
                                    OccupationScore = Slt6_Score[6];
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          26 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          29) {
                                    SocioeconomicClass = "Upper Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          16 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          25) {
                                    SocioeconomicClass = "Upper Middle Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          11 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          15) {
                                    SocioeconomicClass = "Lower Middle Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          5 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          10) {
                                    SocioeconomicClass = "Upper Lower Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          1 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          4) {
                                    SocioeconomicClass = "Lower Class";
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "In 2019 ( February 2019 CPI )",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              isExpanded: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0,
                                    color: const Color(0xff4A64FE)),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Slt7[0],
                              items: Slt7.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen,
                                      overflow: TextOverflow.ellipsis),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.EconomicStatus[9] = val.toString();

                                setState(() {
                                  if (val == ">=52,734") {
                                    CPIScore = Slt7_Score[0];
                                  }
                                  if (val == "26,355-52,733") {
                                    CPIScore = Slt7_Score[1];
                                  }
                                  if (val == "19,759-26,354") {
                                    CPIScore = Slt7_Score[2];
                                  }
                                  if (val == "13,161-19,758") {
                                    CPIScore = Slt7_Score[3];
                                  }
                                  if (val == "7,887-13,160") {
                                    CPIScore = Slt7_Score[4];
                                  }
                                  if (val == "2,641-7,886") {
                                    CPIScore = Slt7_Score[5];
                                  }
                                  if (val == "≤2,640") {
                                    CPIScore = Slt7_Score[6];
                                  }

                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          26 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          29) {
                                    SocioeconomicClass = "Upper Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          16 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          25) {
                                    SocioeconomicClass = "Upper Middle Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          11 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          15) {
                                    SocioeconomicClass = "Lower Middle Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          5 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          10) {
                                    SocioeconomicClass = "Upper Lower Class";
                                  }
                                  if (CPIScore +
                                              EducationScore +
                                              OccupationScore >
                                          1 &&
                                      CPIScore +
                                              EducationScore +
                                              OccupationScore <
                                          4) {
                                    SocioeconomicClass = "Lower Class";
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "Socioeconomic Class : " +
                                        SocioeconomicClass.toUpperCase(),
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Counsellor.EconomicStatus[0] =
                                CurrentPatientInfo.PatientID;
                            Counsellor.EconomicStatus[10] = SocioeconomicClass;

                            Map map = Counsellor.EconomicStatus.asMap();
                            final Map<String, String> blocksMapOfIntToString = {
                              for (var item in map.entries)
                                '${"DOC" + item.key.toString()}': item.value,
                            };
                            ///////////// -------------- ////////////////

                            ///////// DEVELOPMENT CODE///////////////////
                            List<String> templist1 =
                                blocksMapOfIntToString.keys.toList();
                            List<String> templist = [];
                            blocksMapOfIntToString.forEach((k, v) => templist
                                .add(k.toString() + ":" + k.toString()));
                            print(templist1);
                            print(templist);

                            ///////// ---------------- /////////////////

                            Counsellor_Upload upload = new Counsellor_Upload();
                            upload.UploadEconomicStatus(blocksMapOfIntToString)
                                .then((value) {
                              if (jsonDecode(value)["result"] == "SUCCESS") {
                                Navigator.pop(context);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text(
                                    "Failed to add data",
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
