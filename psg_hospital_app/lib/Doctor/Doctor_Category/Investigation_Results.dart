import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Values.dart';

class InvResult extends StatefulWidget {
  const InvResult({Key? key}) : super(key: key);

  @override
  _InvResultState createState() => _InvResultState();
}

class _InvResultState extends State<InvResult> {
  final List<String> Inv = [
    "FBS",
    "PPBS",
    "HbA1C",
    "UREA",
    "CREATININE",
    "POTASSIUM",
    "URIC_ACID",
    "TC",
    "TGL",
    "HDL",
    "NON_HDL",
    "LDL",
    "LPA",
    "Apo_A",
    "Apo_B",
    "SDLDL",
    "Homocysteine",
    "TSH",
    "HEMOGLOBIN",
    "RBC",
    "WBC",
    "HEMATOCRIT",
    "NEUTROPHIL",
    "LYMPHOCYTE",
    "MONOCYTE",
    "EOSINOPHIL",
    "BASOPHIL",
    "PLATELET_COUNT",
    "MCV",
    "RDW",
    "MPV",
    "PDW",
    "ESR",
    "CRP",
    "IL6",
    "Trop_T",
    "Pulse_Wave_Velocity",
    "EndoPAT",
    "CPK-MB",
    "Folate",
    "NTPROBNP",
    "VitB12",
    "Serology",
    "Peripheral Smear",
    "PT-INR",
    "Sodium",
  ];

  final List<String> LFT = [
    "Total Bilirubin",
    "Direct Bilirubin",
    "Indirect Bilirubin",
    "Total Protein",
    "Albumin",
    "Globulin",
    "SGOT",
    "SGPT",
  ];

  final List<String> AnemiaProfile = [
    "Iron",
    "Ferritin",
    "TIBC",
    "UIBC",
  ];
  void initState() {
    print(AnemiaProfile.length + LFT.length + Inv.length);
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
              "Investigation Results",
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
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: List.generate(
                                Inv.length,
                                (index) => Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            Inv[index],
                                            style: GoogleFonts.lato(
                                              color: Color(0xff4A64FE),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextFieldWidget_Date(
                                      catkey: "INVDATE",
                                      LabelText: 'Date',
                                      index: index + 1,
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFieldWidget_M(
                                      onChanged: () {},
                                      Num_Lines: 1,
                                      error: false,
                                      index: index + 1,
                                      catkey: "INVOUTSIDE",
                                      Num: false,
                                      hintText: 'Outside',
                                      obscureText: false,
                                      prefixIconData: Icons.arrow_right,
                                      suffixIconData: Icons.verified_user,
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFieldWidget_M(
                                      onChanged: () {},
                                      Num_Lines: 1,
                                      error: false,
                                      index: index + 1,
                                      catkey: "INVHOSPITAL",
                                      Num: false,
                                      hintText: 'In-Hospital',
                                      obscureText: false,
                                      prefixIconData: Icons.arrow_right,
                                      suffixIconData: Icons.verified_user,
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFieldWidget_M(
                                      onChanged: () {},
                                      Num_Lines: 1,
                                      error: false,
                                      index: index + 1,
                                      catkey: "INVRESULT",
                                      Num: false,
                                      hintText: 'Result',
                                      obscureText: false,
                                      prefixIconData: Icons.arrow_right,
                                      suffixIconData: Icons.verified_user,
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              )),
                          //DROPDOWN
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Others",
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
                          TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 47,
                            catkey: "INV",
                            Num: false,
                            hintText: 'Description',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),

                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "LFT",
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
                          Column(
                            children: List.generate(
                                LFT.length,
                                (index) => Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                LFT[index],
                                                style: GoogleFonts.lato(
                                                  color:
                                                      const Color(0xff4A64FE),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      TextFieldWidget_M(
                                        onChanged: () {},
                                        Num_Lines: 1,
                                        error: false,
                                        index: index + 48,
                                        catkey: "INV",
                                        Num: false,
                                        hintText: 'Description',
                                        obscureText: false,
                                        prefixIconData: Icons.arrow_right,
                                        suffixIconData: Icons.verified_user,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                    ])),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Anemia Profile",
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
                          Column(
                            children: List.generate(
                                AnemiaProfile.length,
                                (index) => Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                AnemiaProfile[index],
                                                style: GoogleFonts.lato(
                                                  color:
                                                      const Color(0xff4A64FE),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      TextFieldWidget_M(
                                        onChanged: () {},
                                        Num_Lines: 1,
                                        error: false,
                                        index: index + 55,
                                        catkey: "INV",
                                        Num: false,
                                        hintText: 'Description',
                                        obscureText: false,
                                        prefixIconData: Icons.arrow_right,
                                        suffixIconData: Icons.verified_user,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                    ])),
                          ),

                          GestureDetector(
                            onTap: () {
                              ///////////// COPYCODE ////////////////
                              Doctor.Inv[0][0] = CurrentPatientInfo.PatientID;
                              Map map = Doctor.Inv.asMap();
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
                              upload.UploadPatientInv(blocksMapOfIntToString)
                                  .then((value) {
                                if (jsonDecode(value)["result"] == "SUCCESS") {
                                  Navigator.pop(context);
                                } else {
                                  Scaffold.of(context)
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
