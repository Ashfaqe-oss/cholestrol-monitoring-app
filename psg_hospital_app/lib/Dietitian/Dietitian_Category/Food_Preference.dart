import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Dietitan_Upload.dart';
import '../Data_Upload/Values.dart';

class Food_Preference extends StatefulWidget {
  const Food_Preference({Key? key}) : super(key: key);

  @override
  _Food_PreferenceState createState() => _Food_PreferenceState();
}

class _Food_PreferenceState extends State<Food_Preference> {
  final List<String> Foods = [
    "Beverages",
    "Fruits",
    "Vegetables",
    "Nuts & seeds",
    "Herbs",
    "Snacks",
    "Soups",
    "Smoothies",
    "Salads",
    "Grains / Cereals",
    "Legumes",
    "Breakfast",
    "Lunch",
    "Dinner",
    "Desserts",
    "Orders in restaurants",
    "Online orders",
    "Others",
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
                                Foods.length,
                                (index) => Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            Foods[index],
                                            style: GoogleFonts.lato(
                                              color: Color(0xff4A64FE),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextFieldWidget_M(
                                      onChanged: () {},
                                      Num_Lines: 1,
                                      error: false,
                                      index: index + 1,
                                      catkey: "LIKE",
                                      Num: false,
                                      hintText: 'Like',
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
                                      catkey: "DLIKE",
                                      Num: false,
                                      hintText: "Don't Like",
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
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              ///////////// COPYCODE ////////////////
                              Dietitian.FoodPreference[0][0] =
                                  CurrentPatientInfo.PatientID;

                              Map map = Dietitian.FoodPreference.asMap();
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

                              Dietitian_Upload upload = new Dietitian_Upload();
                              upload.UploadFoodPreference(
                                      blocksMapOfIntToString)
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
