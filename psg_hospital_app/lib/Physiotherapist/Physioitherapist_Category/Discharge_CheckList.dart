import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Physiotherapist_Upload/Physio_Values.dart';
import '../Physiotherapist_Upload/Physiotherapist_Upload.dart';

class Discharge_CheckList extends StatefulWidget {
  const Discharge_CheckList({Key? key}) : super(key: key);

  @override
  _Discharge_CheckListState createState() => _Discharge_CheckListState();
}

class _Discharge_CheckListState extends State<Discharge_CheckList> {
  List<String> CheckList = [
    "Has Patient been given advice and education regarding return to activities of daily living ?",
    "Assessment of return to work:",
    "Home program given",
    "Patient understand and can complete the given exercises independently",
    "Activity levels",
    "Exercise intensity",
    "Can Patient monitor own heart rate",
    "Does patient understand the use of Borg Scale",
    "Criteria to terminate exercises",
    "Date given for review appointment",
    "Has patient been given a contact telephone number for the Rehabilitation Department?",
    "Importance of Phase – II / outpatient Cardiac Rehabilitation program",
    "Willingness for participation:"
  ];
  List<String> FeedBack = ["Yes", "No"];
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
              "Discharge CheckList",
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
                        Container(
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "DISCHARGE CHECK LIST FOR PHYSICAL REHABILITATION",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              CheckList.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                (index + 1).toString() +
                                                    ". " +
                                                    CheckList[index],
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
                                    ),
                                    DropdownButtonFormField(
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
                                              color: const Color(0xff4A64FE)),
                                        ),
                                        labelText: "Select",
                                        prefixIcon: const Icon(
                                          Icons.arrow_right,
                                          size: 20,
                                          color: const Color(0xff4A64FE),
                                        ),
                                      ),
                                      value: FeedBack[0],
                                      items: FeedBack.map((gen) {
                                        return DropdownMenuItem(
                                          value: gen,
                                          child: Text(gen),
                                        );
                                      }).toList(),
                                      onChanged: (val) {
                                        Physiotherapist
                                                .DischargeCheckList[index + 1] =
                                            val.toString();
                                        setState(() {});
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ])),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFieldWidget_M(
                          onChanged: () {},
                          Num_Lines: 1,
                          error: false,
                          catkey: 'DISCH',
                          index: 14,
                          Num: false,
                          hintText: 'If No - State Reason ',
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
                            Physiotherapist.DischargeCheckList[0] =
                                CurrentPatientInfo.PatientID;

                            Map map =
                                Physiotherapist.DischargeCheckList.asMap();
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

                            Physiotherapist_Upload upload =
                                new Physiotherapist_Upload();
                            upload.UploadDischargeCheckList(
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
                        const SizedBox(
                          height: 10.0,
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
