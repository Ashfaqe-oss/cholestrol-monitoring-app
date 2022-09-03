import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Cards.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/Physio_View.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Values.dart';

class View_Discharge extends StatefulWidget {
  const View_Discharge({Key? key}) : super(key: key);

  @override
  _View_DischargeState createState() => _View_DischargeState();
}

class _View_DischargeState extends State<View_Discharge> {
  bool load = true;

  void loaddata() async {
    PhysioView.DischargeCheck = [];
    Physio_View Get = new Physio_View();
    await Get.GetDischarge();
    setState(() {
      if (PhysioView.DischargeCheck[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

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
            "Check List",
            style: GoogleFonts.lato(
              color: const Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: load == false
            ? SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: List.generate(
                            CheckList.length,
                            (index) => Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            CheckList[index],
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
                                  PhysioCards(
                                      "",
                                      PhysioView.DischargeCheck[0]
                                              ["DOC" + (index + 1).toString()]
                                          .toString(),
                                      0,
                                      "DOC" + (index + 1).toString(),
                                      "DROP6"),
                                ])),
                      ),
                      PhysioCards(
                          "If No - State Reason",
                          PhysioView.DischargeCheck[0]["DOC14".toString()]
                              .toString(),
                          0,
                          "DOC14",
                          "DISTEXT"),
                    ]),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
