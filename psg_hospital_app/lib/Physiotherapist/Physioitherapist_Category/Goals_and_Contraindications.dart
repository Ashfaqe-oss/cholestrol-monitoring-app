import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Physiotherapist_Upload/Physio_Values.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';
import '../Physiotherapist_Upload/Physiotherapist_Upload.dart';

class Goals extends StatefulWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  final List<String> Contraindications = [
    "Unstable Angina",
    "Resting Systolic BP > 200 mmHg",
    "Resting diastolic BP > 100 mmHg",
    "Orthostatic Hypotension",
    "Aortic Stenosis",
    "Systemic Illness",
    "Uncontrolled Diabetes Mellitus",
    "Sinus Tachycardia",
    "Resting ST Displacement > 3",
    "Atrial Arrhythmia",
    "Recent Embolism",
    "Thrombophlebitis",
    "Musculoskeletal problems",
    "Uncontrolled CHF",
    "Fever",
    "Ventricular Arrhythmia",
    "Uncontrolled CHF",
    "Third Degree Heart Block",
  ];
  final List<bool> Contraindication_Log = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
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
              "Goals and Contraindications",
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
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Contraindications",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: List.generate(
                                Contraindications.length,
                                (index) => Column(
                                  children: [
                                    CheckboxListTile(
                                      title: Text(
                                          Contraindications[index].toString()),
                                      value: Contraindication_Log[index],
                                      onChanged: (newValue) {
                                        setState(() {
                                          if (Contraindication_Log[index]) {
                                            Contraindication_Log[index] = false;
                                          } else {
                                            Contraindication_Log[index] = true;
                                          }
                                          Physiotherapist.Goals[index + 1] =
                                              Contraindication_Log[index]
                                                  .toString();
                                        });
                                      },
                                      controlAffinity: ListTileControlAffinity
                                          .leading, //  <-- leading Checkbox
                                    ),
                                  ],
                                ),
                              )),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 19,
                            catkey: "GOALS",
                            Num: false,
                            hintText: 'Others',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Divider(
                            height: 25,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 20,
                            catkey: "GOALS",
                            Num: false,
                            hintText: 'Name ( CRRI )',
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
                            index: 21,
                            catkey: "GOALS",
                            Num: false,
                            hintText: 'Name ( Sr. PT )',
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
                            index: 22,
                            catkey: "GOALS",
                            Num: false,
                            hintText: 'Name ( HOD )',
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
                            index: 23,
                            catkey: "GOALS",
                            Num: false,
                            hintText: 'Name ( Consultant )',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              ///////////// COPYCODE ////////////////
                              Physiotherapist.Goals[0] =
                                  CurrentPatientInfo.PatientID;

                              Map map = Physiotherapist.Goals.asMap();
                              final Map<String, String> blocksMapOfIntToString =
                                  {
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

                              Physiotherapist_Upload upload =
                                  new Physiotherapist_Upload();
                              upload.UploadGoals(blocksMapOfIntToString)
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
