import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Dietitan_Upload.dart';
import '../Data_Upload/Values.dart';

class Dietitian_Section3_FoodQuantity extends StatefulWidget {
  const Dietitian_Section3_FoodQuantity({Key? key}) : super(key: key);

  @override
  _Dietitian_Section3_FoodQuantityState createState() =>
      _Dietitian_Section3_FoodQuantityState();
}

class _Dietitian_Section3_FoodQuantityState
    extends State<Dietitian_Section3_FoodQuantity> {
  List<String> Section3 = [
    "Vegetables  intake per day ( approx no. of servings)",
    "Fruits intake per day (approx no.of servings)",
    "Do you eat raw vegetables? If yes what vegetable and how frequently?",
    "Frequency of eating - Pickles,Papads,Other salty items",
    "How frequently do you take nuts  and seeds?(everyday/most days a  week/rarely) Also mention if its plain/salted/masala added",
    "Frequency of taking Meat, Fish, Egg,Dairy products",
    "Frequency of eating sweets?",
    "Number of members in family",
    "Type of Oil used",
    "Quantity in litres per month",
    "Do you take any calcium/vitamin/ ayurvedic /herbal supplements?",
    "Frequency of eating out? What type of food?",
    "What Is that food you know is healthy but you don’t like ?",
    "What is the food you know is unhealthy but you could not  avoid?",
    "What is that food you wanted to have but not able to cook / find out?",
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
              "FOOD QUANTITY",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 15,
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
                      Section3.length,
                      (index) => Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  Section3[index],
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
                            catkey: "FOODQUANTITY",
                            Num: false,
                            hintText: "Quantity",
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
                      Dietitian.FoodQuantity[0] = CurrentPatientInfo.PatientID;

                      Map map = Dietitian.FoodQuantity.asMap();
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
                      upload.UploadFoodQuantity(blocksMapOfIntToString)
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
