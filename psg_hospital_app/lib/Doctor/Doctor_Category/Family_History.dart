import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../Data_Upload/Values.dart';

class FamilyHistory extends StatefulWidget {
  const FamilyHistory({Key? key}) : super(key: key);

  @override
  _FamilyHistoryState createState() => _FamilyHistoryState();
}

class _FamilyHistoryState extends State<FamilyHistory> {
  int NumofSibling = 0;

  void initState() {
    super.initState();
    /*
    print(Doctor.FamilyHistory[3].toString());
    String temp1 = Doctor.FamilyHistory[3]
        .toString()
        .replaceAll("[[[", "")
        .replaceAll("]]]", "");
    print(temp1);
    List<String> temps1 = temp1.split("], [");
    List<String> temp2 = temp1.toString().split(",");
    print(temp2);
    print(temp2[0]);
    */
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
              "Family History",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Family History",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Father",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[1][0] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Age",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ]),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[1][1] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Hypertension",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[1][2] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Diabetes Mellitus",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[1][3] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Heart Disease",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[1][4] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Others",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Mother",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[2][0] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Age",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ]),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[2][1] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Hypertension",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[2][2] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Diabetes Mellitus",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[2][3] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Heart Disease",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              Doctor.FamilyHistory[2][4] = value;
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Others",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            )),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Siblings",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                            onChanged: (value) {
                              setState(() {
                                Doctor.Sibilings.clear();
                                NumofSibling = int.parse(value);
                                for (int i = 0; i < NumofSibling; i++) {
                                  Doctor.Sibilings.add(["", "", "", "", ""]);
                                }
                                print(Doctor.FamilyHistory);
                                print(Doctor.Sibilings);
                              });
                            },
                            cursorColor: const Color(0xff4A64FE),
                            style: GoogleFonts.lato(
                              color: const Color(0xff4A64FE),
                              fontSize: 16.0,
                            ),
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Number of Siblings",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 16,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ]),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              NumofSibling,
                              (index) => Column(children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "Sibling - " +
                                                  (index + 1).toString(),
                                              style: GoogleFonts.lato(
                                                color: const Color(0xff4A64FE),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    TextField(
                                        onChanged: (value) {
                                          Doctor.Sibilings[index][0] = value;
                                          print(Doctor.Sibilings);
                                        },
                                        cursorColor: const Color(0xff4A64FE),
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff4A64FE),
                                          fontSize: 16.0,
                                        ),
                                        decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Color(0xff4A64FE)),
                                          focusColor: const Color(0xff4A64FE),
                                          filled: true,
                                          enabledBorder: UnderlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0xff4A64FE)),
                                          ),
                                          labelText: "Age",
                                          prefixIcon: const Icon(
                                            Icons.arrow_right,
                                            size: 16,
                                            color: Color(0xff4A64FE),
                                          ),
                                        ),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ]),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    TextField(
                                        onChanged: (value) {
                                          Doctor.Sibilings[index][1] = value;
                                          print(Doctor.Sibilings);
                                        },
                                        cursorColor: const Color(0xff4A64FE),
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff4A64FE),
                                          fontSize: 16.0,
                                        ),
                                        decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Color(0xff4A64FE)),
                                          focusColor: const Color(0xff4A64FE),
                                          filled: true,
                                          enabledBorder: UnderlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0xff4A64FE)),
                                          ),
                                          labelText: "Hypertension",
                                          prefixIcon: const Icon(
                                            Icons.arrow_right,
                                            size: 16,
                                            color: Color(0xff4A64FE),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    TextField(
                                        onChanged: (value) {
                                          Doctor.Sibilings[index][2] = value;
                                          print(Doctor.Sibilings);
                                        },
                                        cursorColor: const Color(0xff4A64FE),
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff4A64FE),
                                          fontSize: 16.0,
                                        ),
                                        decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Color(0xff4A64FE)),
                                          focusColor: const Color(0xff4A64FE),
                                          filled: true,
                                          enabledBorder: UnderlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0xff4A64FE)),
                                          ),
                                          labelText: "Diabetes Mellitus",
                                          prefixIcon: const Icon(
                                            Icons.arrow_right,
                                            size: 16,
                                            color: Color(0xff4A64FE),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    TextField(
                                        onChanged: (value) {
                                          Doctor.Sibilings[index][3] = value;
                                          print(Doctor.Sibilings);
                                        },
                                        cursorColor: const Color(0xff4A64FE),
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff4A64FE),
                                          fontSize: 16.0,
                                        ),
                                        decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Color(0xff4A64FE)),
                                          focusColor: const Color(0xff4A64FE),
                                          filled: true,
                                          enabledBorder: UnderlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0xff4A64FE)),
                                          ),
                                          labelText: "Heart Disease",
                                          prefixIcon: const Icon(
                                            Icons.arrow_right,
                                            size: 16,
                                            color: Color(0xff4A64FE),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    TextField(
                                        onChanged: (value) {
                                          Doctor.Sibilings[index][4] = value;
                                          print(Doctor.Sibilings);
                                        },
                                        cursorColor: const Color(0xff4A64FE),
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff4A64FE),
                                          fontSize: 16.0,
                                        ),
                                        decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Color(0xff4A64FE)),
                                          focusColor: const Color(0xff4A64FE),
                                          filled: true,
                                          enabledBorder: UnderlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                                color: Color(0xff4A64FE)),
                                          ),
                                          labelText: "Others",
                                          prefixIcon: const Icon(
                                            Icons.arrow_right,
                                            size: 16,
                                            color: Color(0xff4A64FE),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                  ])),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Doctor.FamilyHistory[3].clear();
                            Doctor.FamilyHistory[3]
                                .add(jsonEncode(Doctor.Sibilings));
                            ///////////// COPYCODE ////////////////
                            print(Doctor.FamilyHistory);
                            print(Doctor.FamilyHistory[3].toList().toList());
                            Doctor.FamilyHistory[0][0] =
                                CurrentPatientInfo.PatientID;
                            Map map = Doctor.FamilyHistory.asMap();
                            // USED FOR GENERATING KEY VALUE PAIR MAP OBJECT
                            final Map<String, List<String>>
                                blocksMapOfIntToString = {
                              for (var item in map.entries)
                                '${"DOC" + item.key.toString()}': item.value,
                            };
                            ///////////// -------------- ////////////////

                            ////DEFAULT NO CHANGE///// DEVELOPMENT CODE///////////////////
                            List<String> templist1 =
                                blocksMapOfIntToString.keys.toList();
                            List<String> templist = [];
                            blocksMapOfIntToString.forEach((k, v) => templist
                                .add(k.toString() + ":" + k.toString()));
                            print(templist1);
                            print(templist);
                            ///////// ---------------- /////////////////

                            Doctor_Upload upload = new Doctor_Upload();
                            upload.UploadPatientFamilyHistory(
                                    blocksMapOfIntToString)
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
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
