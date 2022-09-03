import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';

import 'Cards.dart';
import 'Doctor_View.dart';

class WomenInfo_View extends StatefulWidget {
  const WomenInfo_View({Key? key}) : super(key: key);

  @override
  _WomenInfo_ViewState createState() => _WomenInfo_ViewState();
}

class _WomenInfo_ViewState extends State<WomenInfo_View> {
  bool load = true;
  void loaddata() async {
    DocView.WomenInfo = [];
    Doctor_View Get = new Doctor_View();
    await Get.GetWomenSpecific();
    setState(() {
      if (DocView.WomenInfo[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

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
            "Women Specific Information",
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
                              Female.length,
                              (index) => Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "",
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
                                    Cards(
                                        Female[index],
                                        DocView.WomenInfo[0]
                                            ["DOC" + (index + 1).toString()],
                                        index + 1,
                                        "DOC" + (index + 1).toString(),
                                        "WOMEN"),
                                  ])),
                        ),
                        Cards("History of Adverse Pregnancy",
                            DocView.WomenInfo[0]["DOC9"], 9, "DOC9", "DROP4"),
                        Cards(
                            "Specify (History of Adverse Pregnancy)",
                            DocView.WomenInfo[0]["DOC10"],
                            10,
                            "DOC10",
                            "WOMEN"),
                      ]),
                ),
              )
            : Container(),
      ),
    );
  }
}
