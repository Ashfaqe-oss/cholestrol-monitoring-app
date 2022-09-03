import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/Dietitian_View.dart';
import 'package:psg_hospital_app/Dietitian/Data_View_Update/View_Values.dart';

class View_Section1 extends StatefulWidget {
  const View_Section1({Key? key}) : super(key: key);

  @override
  _View_Section1State createState() => _View_Section1State();
}

class _View_Section1State extends State<View_Section1> {
  bool load = true;

  void loaddata() async {
    DieView.Section1 = [];
    Dietitian_View Get = new Dietitian_View();
    await Get.GetSection1();
    setState(() {
      if (DieView.Section1[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  List<String> Section1 = [
    "Budget allocated for food per month",
    "Who prepares food at home?",
    "If not by you what’s your contribution in kitchen",
    "Preference for modifying diet- gradual approach or all at once approach",
    "Any food allergies/sensitivity",
    "Dental problems, if any",
    "Source of grocery/ fruits/ vegetables- online / in store purchase",
    "Do you wish to modify your diet?",
    "If yes, for what reasons",
    "Are there any inhibiting factors or challenges for modifying your diet? If yes pls specify your challenges",
    "Do you have any change in appetite (increased or decreased)?-s"
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                              Section1.length,
                              (index) => Column(children: [
                                    DietitianCards(
                                        Section1[index],
                                        DieView.Section1[0]
                                                ["DOC" + (index + 1).toString()]
                                            .toString(),
                                        0,
                                        "DOC" + (index + 1).toString(),
                                        "SECTIONTEXT"),
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
