import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_Upload/Dietitan_Upload.dart';
import 'package:psg_hospital_app/Dietitian/Data_Upload/Values.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';

class Dietitian_Section1 extends StatefulWidget {
  const Dietitian_Section1({Key? key}) : super(key: key);

  @override
  _Dietitian_Section1State createState() => _Dietitian_Section1State();
}

class _Dietitian_Section1State extends State<Dietitian_Section1> {
  List<String> Section1 = [
    "Budget allocated for food per month",
    "Who prepares food at home?",
    "If not by you what’s your contribution in kitchen",
    "Preference for modifying diet- gradual approach or all at once approach",
    "Any food allergies/sensitivity",
    "Dental problems, if any",
    "Source of grocery/ fruits/ vegetables- online / in store purchase",
    "Do you wish to modify your diet?",
    "If yes, for what reasons",
    "Are there any inhibiting factors or challenges for modifying your diet? If yes pls specify your challenges",
    "Do you have any change in appetite (increased or decreased)?-s"
  ];

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
              "",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: List.generate(
                      Section1.length,
                      (index) => Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  Section1[index],
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: index + 1,
                            catkey: "SECTION1",
                            Num: false,
                            hintText: "Description",
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      ///////////// COPYCODE ////////////////
                      Dietitian.Section1[0] = CurrentPatientInfo.PatientID;

                      Map map = Dietitian.Section1.asMap();
                      final Map<String, String> blocksMapOfIntToString = {
                        for (var item in map.entries)
                          '${"DOC" + item.key.toString()}': item.value,
                      };
                      ///////////// -------------- ////////////////

                      ///////// DEVELOPMENT CODE///////////////////
                      List<String> templist1 =
                          blocksMapOfIntToString.keys.toList();
                      List<String> templist = [];
                      blocksMapOfIntToString.forEach((k, v) =>
                          templist.add(k.toString() + ":" + k.toString()));
                      print(templist1);
                      print(templist);

                      ///////// ---------------- /////////////////

                      Dietitian_Upload upload = new Dietitian_Upload();
                      upload.UploadSection1(blocksMapOfIntToString)
                          .then((value) {
                        if (jsonDecode(value)["result"] == "SUCCESS") {
                          Navigator.pop(context);
                        } else {
                          Scaffold.of(context).showSnackBar(const SnackBar(
                            content: Text(
                              "Failed to add data",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
