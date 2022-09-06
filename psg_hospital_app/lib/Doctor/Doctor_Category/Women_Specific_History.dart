import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Values.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';

class WomenSpecific extends StatefulWidget {
  const WomenSpecific({Key? key}) : super(key: key);

  @override
  _WomenSpecificState createState() => _WomenSpecificState();
}

class _WomenSpecificState extends State<WomenSpecific> {
  List<String> Female = [
    "Age At Menarche?",
    "Last Menstrual Period?",
    "Cycle Length ?",
    "Age At Menopause( If Attained)?",
    "History Of Parity?",
    "History Of PCOS And Treatment?",
    "Any other health conditions",
    "Any surgical Procedure"
  ];
  List<String> AdversePregnancy = [
    "None",
    "SHT",
    "DM",
    "Pre Eclampsia",
    "Abrupt to Placenta",
    "Abortion",
    "Post Partum Haemorrhage(PPH)",
    "Preterm delivery",
    "Low Birth Weight(LBW)",
    "Small for gestational age(SGA)",
    "Large for Gestational age(LGA)",
    "Intra Urine Growth Retardation(IUGR)",
    "Hypothyroidism",
    "Infertility",
    "Hormone Replacement Therapy(HRT)"
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
              "Women Specific History",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 18,
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
                      Female.length,
                      (index) => Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: index + 1,
                            catkey: "WOMEN_INFO",
                            Num: false,
                            hintText: Female[index],
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
                  DropdownButtonFormField(
                    isExpanded: true,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: Color(0xff4A64FE)),
                      focusColor: const Color(0xff4A64FE),
                      filled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xff4A64FE)),
                      ),
                      labelText: "History Of Adverse Pregnancy?",
                      prefixIcon: const Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Color(0xff4A64FE),
                      ),
                    ),
                    value: AdversePregnancy[0],
                    items: AdversePregnancy.map((gen) {
                      return DropdownMenuItem(
                        value: gen,
                        child: Text(gen, overflow: TextOverflow.ellipsis),
                      );
                    }).toList(),
                    onChanged: (value) {
                      Doctor.WomenSpecificInformation[9] = value.toString();
                      print(value);
                      print(Doctor.WomenSpecificInformation);
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFieldWidget_M(
                    onChanged: () {},
                    Num_Lines: 1,
                    error: false,
                    index: 10,
                    catkey: "WOMEN_INFO",
                    Num: false,
                    hintText: "(Specify) History of Adverse Pregnancy",
                    obscureText: false,
                    prefixIconData: Icons.arrow_right,
                    suffixIconData: Icons.verified_user,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      ///////////// COPYCODE ////////////////
                      Doctor.WomenSpecificInformation[0] =
                          CurrentPatientInfo.PatientID;
                      Map map = Doctor.WomenSpecificInformation.asMap();
                      // USED FOR GENERATING KEY VALUE PAIR MAP OBJECT
                      final Map<String, String> blocksMapOfIntToString = {
                        for (var item in map.entries)
                          '${"DOC" + item.key.toString()}': item.value,
                      };
                      ///////////// -------------- ////////////////

                      ////DEFAULT NO CHANGE///// DEVELOPMENT CODE///////////////////
                      List<String> templist1 =
                          blocksMapOfIntToString.keys.toList();
                      List<String> templist = [];
                      blocksMapOfIntToString.forEach((k, v) =>
                          templist.add(k.toString() + ":" + k.toString()));
                      print(templist1);
                      print(templist);
                      ///////// ---------------- /////////////////

                      Doctor_Upload upload = new Doctor_Upload();
                      upload.UploadPatientWomenInfo(blocksMapOfIntToString)
                          .then((value) {
                        if (jsonDecode(value)["result"] == "SUCCESS") {
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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
