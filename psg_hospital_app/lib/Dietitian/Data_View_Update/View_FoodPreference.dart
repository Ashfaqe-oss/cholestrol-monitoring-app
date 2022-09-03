import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Dietitian_View.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/View_Values.dart';

class View_Preference extends StatefulWidget {
  const View_Preference({Key? key}) : super(key: key);

  @override
  _View_PreferenceState createState() => _View_PreferenceState();
}

class _View_PreferenceState extends State<View_Preference> {
  bool load = true;

  void loaddata() async {
    DieView.FoodPreference = [];
    Dietitian_View Get = new Dietitian_View();
    await Get.GetFoodPreference();
    setState(() {
      if (DieView.FoodPreference[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

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
            "Food Preference",
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
                          children: List.generate(
                              Foods.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              Foods[index],
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
                                    DietitianCards(
                                        "Like",
                                        DieView.FoodPreference[0]
                                                ["DOC" + (index + 1).toString()]
                                                [0]
                                            .toString(),
                                        0,
                                        "DOC" + (index + 1).toString(),
                                        "PREFTEXT"),
                                    DietitianCards(
                                        "Don't Like",
                                        DieView.FoodPreference[0]
                                                ["DOC" + (index + 1).toString()]
                                                [1]
                                            .toString(),
                                        1,
                                        "DOC" + (index + 1).toString(),
                                        "PREFTEXT"),
                                  ])),
                        ),
                      ]),
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
