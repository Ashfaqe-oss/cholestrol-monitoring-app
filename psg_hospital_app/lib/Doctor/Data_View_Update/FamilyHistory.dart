import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import 'Cards.dart';
import 'Doctor_View.dart';

class FamilyHistory_View extends StatefulWidget {
  const FamilyHistory_View({Key? key}) : super(key: key);

  @override
  _FamilyHistory_ViewState createState() => _FamilyHistory_ViewState();
}

class _FamilyHistory_ViewState extends State<FamilyHistory_View> {
  bool load = true;

  void loaddata() async {
    DocView.Siblings = [];
    DocView.FamilyHistory = [];
    Doctor_View Get = new Doctor_View();
    await Get.GetFamilyHistory();
    setState(() {
      if (DocView.FamilyHistory[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
      print(DocView.FamilyHistory[0]["DOC3"]);
      DocView.Siblings =
          jsonDecode(DocView.FamilyHistory[0]["DOC3"].toString());
      print(DocView.Siblings[0][0][0]);
      print(DocView.Siblings[0].length);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        body: load == false
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Father",
                                          style: GoogleFonts.lato(
                                            color: const Color(0xff4A64FE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Cards(
                                    "Age",
                                    DocView.FamilyHistory[0]["DOC1"][0],
                                    0,
                                    "DOC1",
                                    "FAMILY"),
                                Cards(
                                    "Hypertension",
                                    DocView.FamilyHistory[0]["DOC1"][1],
                                    1,
                                    "DOC1",
                                    "FAMILY"),
                                Cards(
                                    "Diabetes Mellitus",
                                    DocView.FamilyHistory[0]["DOC1"][2],
                                    2,
                                    "DOC1",
                                    "FAMILY"),
                                Cards(
                                    "Heart Disease",
                                    DocView.FamilyHistory[0]["DOC1"][3],
                                    3,
                                    "DOC1",
                                    "FAMILY"),
                                Cards(
                                    "Others",
                                    DocView.FamilyHistory[0]["DOC1"][4],
                                    4,
                                    "DOC1",
                                    "FAMILY"),
                              ]),
                              Divider(
                                color: Colors.grey,
                                thickness: 3,
                              ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Mother",
                                          style: GoogleFonts.lato(
                                            color: Color(0xff4A64FE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Cards(
                                    "Age",
                                    DocView.FamilyHistory[0]["DOC2"][0],
                                    0,
                                    "DOC2",
                                    "FAMILY"),
                                Cards(
                                    "Hypertension",
                                    DocView.FamilyHistory[0]["DOC2"][1],
                                    1,
                                    "DOC2",
                                    "FAMILY"),
                                Cards(
                                    "Diabetes Mellitus",
                                    DocView.FamilyHistory[0]["DOC2"][2],
                                    2,
                                    "DOC2",
                                    "FAMILY"),
                                Cards(
                                    "Heart Disease",
                                    DocView.FamilyHistory[0]["DOC2"][3],
                                    3,
                                    "DOC2",
                                    "FAMILY"),
                                Cards(
                                    "Others",
                                    DocView.FamilyHistory[0]["DOC2"][4],
                                    4,
                                    "DOC2",
                                    "FAMILY"),
                              ]),
                              Divider(
                                color: Colors.grey,
                                thickness: 3,
                              ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Number of Siblings",
                                          style: GoogleFonts.lato(
                                            color: Color(0xff4A64FE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                              //DocView.FamilyHistory[0]["DOC4"][0].length()
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: DocView.Siblings[0].length,
                                itemBuilder: (context, index) {
                                  return Column(children: [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Siblings - " +
                                                  (index + 1).toString(),
                                              style: GoogleFonts.lato(
                                                color: Color(0xff4A64FE),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Cards("Age", DocView.Siblings[0][index][0],
                                        index, "DOC3", "SIB"),
                                    Cards(
                                        "Hypertension",
                                        DocView.Siblings[0][index][1],
                                        index,
                                        "DOC3",
                                        "SIB"),
                                    Cards(
                                        "Diabetes Mellitus",
                                        DocView.Siblings[0][index][2],
                                        index,
                                        "DOC3",
                                        "SIB"),
                                    Cards(
                                        "Heart Disease",
                                        DocView.Siblings[0][index][3],
                                        index,
                                        "DOC3",
                                        "SIB"),
                                    Cards(
                                        "Others",
                                        DocView.Siblings[0][index][4],
                                        index,
                                        "DOC3",
                                        "SIB"),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: 3,
                                    ),
                                  ]);
                                },
                              )
                            ]),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
