import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Values.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';

class RiskFactors extends StatefulWidget {
  const RiskFactors({Key? key}) : super(key: key);

  @override
  _RiskFactorsState createState() => _RiskFactorsState();
}

class _RiskFactorsState extends State<RiskFactors> {
  List<String> HistoryOf = [
    "Type 2 Diabetes Mellitus",
    "Systemic Hypertension",
    "Dyslipidemia",
    "Heart Disease",
    "Smoking",
    "Hypothyroidism",
    "Tobacco chewing",
    "Alcohol consumption",
    "Chronic Kidney Disease",
    "Atrial Fibrillation",
    "Migraine",
    "Rheumatoid Arthritis",
    "Systemic lupus Erythematosus",
    "Severe Mental Illness",
    "Erectile Dysfunction",
    "On Atypical Antipsychotics?",
    "On Steroid Medications",
    "Respiratory Illness",
  ];
  List<String> Col1 = ["Yes", "No", "Not Applicable"];
  List<String> Col2 = [
    "<1 Year",
    "1 to 5 Years",
    "5 to 10 Years",
    "> 10 Years",
    "Not Applicable"
  ];
  List<String> Col3 = [
    "On Medications",
    "Not On Medications",
    "Irregular Treatment",
    "Not Applicable"
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
              "Risk Factors",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              HistoryOf.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              HistoryOf[index],
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
                                    DropdownButtonFormField(
                                      isExpanded: true,
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
                                        labelText: "Select",
                                        prefixIcon: const Icon(
                                          Icons.arrow_right,
                                          size: 20,
                                          color: Color(0xff4A64FE),
                                        ),
                                      ),
                                      value: Col1[0],
                                      items: Col1.map((gen) {
                                        return DropdownMenuItem(
                                          value: gen,
                                          child: Text(gen,
                                              overflow: TextOverflow.ellipsis),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        Doctor.RiskFactors[index + 1][0] =
                                            val.toString();
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    DropdownButtonFormField(
                                      isExpanded: true,
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
                                        labelText: "Duration",
                                        prefixIcon: const Icon(
                                          Icons.arrow_right,
                                          size: 20,
                                          color: Color(0xff4A64FE),
                                        ),
                                      ),
                                      value: Col2[0],
                                      items: Col2.map((gen) {
                                        return DropdownMenuItem(
                                          value: gen,
                                          child: Text(gen,
                                              overflow: TextOverflow.ellipsis),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        Doctor.RiskFactors[index + 1][1] =
                                            val.toString();
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    DropdownButtonFormField(
                                      isExpanded: true,
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
                                        labelText: "Select",
                                        prefixIcon: const Icon(
                                          Icons.arrow_right,
                                          size: 20,
                                          color: Color(0xff4A64FE),
                                        ),
                                      ),
                                      value: Col3[0],
                                      items: Col3.map((gen) {
                                        return DropdownMenuItem(
                                          value: gen,
                                          child: Text(gen,
                                              overflow: TextOverflow.ellipsis),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        Doctor.RiskFactors[index + 1][2] =
                                            val.toString();
                                      },
                                    ),
                                  ])),
                        ),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "On Aspirin",
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
                          DropdownButtonFormField(
                            isExpanded: true,
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
                              labelText: "Select",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                            value: Col1[0],
                            items: Col1.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child:
                                    Text(gen, overflow: TextOverflow.ellipsis),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Doctor.RiskFactors[19][0] = val.toString();
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          DropdownButtonFormField(
                            isExpanded: true,
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
                              labelText: "Duration",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                            value: Col2[0],
                            items: Col2.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child:
                                    Text(gen, overflow: TextOverflow.ellipsis),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Doctor.RiskFactors[19][1] = val.toString();
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ]),
                        const SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Doctor.RiskFactors[0][0] =
                                CurrentPatientInfo.PatientID;
                            Map map = Doctor.RiskFactors.asMap();
                            final Map<String, List<String>>
                                blocksMapOfIntToString = {
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

                            Doctor_Upload upload = new Doctor_Upload();
                            upload.UploadPatientRiskFactors(
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
