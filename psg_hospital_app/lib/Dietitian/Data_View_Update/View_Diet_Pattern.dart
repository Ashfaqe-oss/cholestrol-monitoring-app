import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Dietitian_View.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/View_Values.dart';

import '../../Counsellor/Data_View_Update/Cards.dart';

class View_DietPattern extends StatefulWidget {
  const View_DietPattern({Key? key}) : super(key: key);

  @override
  _View_DietPatternState createState() => _View_DietPatternState();
}

class _View_DietPatternState extends State<View_DietPattern> {
  bool load = true;

  void loaddata() async {
    DieView.Pattern = [];
    Dietitian_View Get = new Dietitian_View();
    await Get.GetPattern();
    setState(() {
      if (DieView.Pattern[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
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
            "Investigation Results",
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Dietary Habits",
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
                        CounsellorCards(
                            "Early Morning",
                            DieView.Pattern[0]["DOC1"].toString(),
                            1,
                            "DOC1",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Food",
                            DieView.Pattern[0]["DOC2"].toString(),
                            2,
                            "DOC2",
                            "DROP1"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC3"].toString(),
                            3,
                            "DOC3",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Milk",
                            DieView.Pattern[0]["DOC5"].toString(),
                            5,
                            "DOC5",
                            "DROP2"),
                        CounsellorCards(
                            "Quantity/ Serving",
                            DieView.Pattern[0]["DOC6"].toString(),
                            6,
                            "DOC7",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Sugar",
                            DieView.Pattern[0]["DOC7"].toString(),
                            7,
                            "DOC7",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity/ Serving",
                            DieView.Pattern[0]["DOC8"].toString(),
                            8,
                            "DOC8",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Breakfast",
                            DieView.Pattern[0]["DOC9"].toString(),
                            9,
                            "DOC9",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Specify type of food",
                            DieView.Pattern[0]["DOC10"].toString(),
                            10,
                            "DOC10",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC11"].toString(),
                            11,
                            "DOC11",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Side Dish",
                            DieView.Pattern[0]["DOC12"].toString(),
                            12,
                            "DOC12",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC13"].toString(),
                            13,
                            "DOC13",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Food",
                            DieView.Pattern[0]["DOC14"].toString(),
                            14,
                            "DOC14",
                            "DROP1"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC15"].toString(),
                            15,
                            "DOC15",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Mid Morning",
                            DieView.Pattern[0]["DOC16"].toString(),
                            16,
                            "DOC16",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Specify type of food",
                            DieView.Pattern[0]["DOC17"].toString(),
                            17,
                            "DOC17",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC18"].toString(),
                            18,
                            "DOC18",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Lunch",
                            DieView.Pattern[0]["DOC19"].toString(),
                            19,
                            "DOC19",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Specify type of food",
                            DieView.Pattern[0]["DOC20"].toString(),
                            20,
                            "DOC20",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC21"].toString(),
                            21,
                            "DOC21",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "What Brand of Rice / Wheat do you buy?",
                            DieView.Pattern[0]["DOC22"].toString(),
                            22,
                            "DOC22",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC23"].toString(),
                            23,
                            "DOC23",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Side Dish",
                            DieView.Pattern[0]["DOC24"].toString(),
                            24,
                            "DOC24",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC25"].toString(),
                            25,
                            "DOC25",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Evening",
                            DieView.Pattern[0]["DOC26"].toString(),
                            26,
                            "DOC26",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Specify type of food",
                            DieView.Pattern[0]["DOC27"].toString(),
                            27,
                            "DOC27",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC28"].toString(),
                            28,
                            "DOC29",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Dinner",
                            DieView.Pattern[0]["DOC29"].toString(),
                            29,
                            "DOC29",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Specify type of food",
                            DieView.Pattern[0]["DOC30"].toString(),
                            30,
                            "DOC30",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC31"].toString(),
                            31,
                            "DOC31",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Side Dish",
                            DieView.Pattern[0]["DOC32"].toString(),
                            32,
                            "DOC32",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC33"].toString(),
                            33,
                            "DOC33",
                            "PATTERNTEXT"),
                        CounsellorCards(
                            "Post Dinner",
                            DieView.Pattern[0]["DOC34"].toString(),
                            34,
                            "DOC34",
                            "SETTIME"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Food Consumed",
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
                        CounsellorCards(
                            "Specify type of food",
                            DieView.Pattern[0]["DOC35"].toString(),
                            35,
                            "DOC35",
                            "DROP1"),
                        CounsellorCards(
                            "Quantity / Serving",
                            DieView.Pattern[0]["DOC36"].toString(),
                            36,
                            "DOC36",
                            "PATTERNTEXT"),
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
