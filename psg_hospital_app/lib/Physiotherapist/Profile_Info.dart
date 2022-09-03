import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/CurrentPatientInfo.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Doctor_View.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/View_Values.dart';
import 'package:psg_hospital_app/Physiotherapist/Data_View_Update/View_Add_Delete.dart';

import '../widget/button_widget.dart';

class PhysioProfileview extends StatefulWidget {
  final String PatientID;
  PhysioProfileview(this.PatientID);
  @override
  _PhysioProfileviewState createState() => _PhysioProfileviewState();
}

class _PhysioProfileviewState extends State<PhysioProfileview> {
  bool load = true;
  void loaddata() async {
    DocView.ProfileInfo = [];
    Doctor_View Get = Doctor_View();
    await Get.GetProfileInfo(widget.PatientID);
    setState(() {
      if (DocView.ProfileInfo[0].length < 2) {
        Navigator.pop(context);
      } else {
        load = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A64FE),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Patient Profile View",
          style: GoogleFonts.lato(
            color: const Color(0xffffffff),
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: load
            ? Center(
                child: Text("Loading"),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("PatientID : " +
                              DocView.ProfileInfo[0]["PatientID"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("PatientName : " +
                              DocView.ProfileInfo[0]["PatientName"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child:
                              Text("Date : " + DocView.ProfileInfo[0]["Date"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("Age : " + DocView.ProfileInfo[0]["Age"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text(
                              "Gender : " + DocView.ProfileInfo[0]["Gender"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("OP Number : " +
                              DocView.ProfileInfo[0]["OPNumber"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("IP Number : " +
                              DocView.ProfileInfo[0]["IPNumber"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child:
                              Text("Ward : " + DocView.ProfileInfo[0]["Ward"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("Description : " +
                              DocView.ProfileInfo[0]["Description"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("Ethnicity : " +
                              DocView.ProfileInfo[0]["Ethnicity"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text(
                              "Address : " + DocView.ProfileInfo[0]["Address"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text("PhoneNumber : " +
                              DocView.ProfileInfo[0]["PhoneNumber"]),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5),
                                  blurRadius: 7,
                                  spreadRadius: 3.5)
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      CurrentPatientInfo.PatientID = widget.PatientID;
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => PhysioAddDeleteEdit()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ButtonWidget(
                        title: 'Next',
                        hasBorder: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
      ),
    );
  }
}
