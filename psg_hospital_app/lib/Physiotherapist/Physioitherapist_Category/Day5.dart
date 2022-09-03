import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Physiotherapist_Upload/Physio_Values.dart';
import '../Physiotherapist_Upload/Physiotherapist_Upload.dart';

class Day5 extends StatefulWidget {
  const Day5({Key? key}) : super(key: key);
  @override
  _Day5State createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  TextEditingController DateInput = new TextEditingController();
  List<String> givento = ["Patient", "Patient Attendants", " Care Giver"];
  List<String> PSession = ["Session - 1", "Session - 2"];

  bool WS1 = false;
  bool WS2 = false;

  bool Walking1 = false;
  bool Walking2 = false;

  List<String> Parameters = [
    "Heart Rate",
    "SPO2",
    "Blood Pleasure",
    "Borg's Scale",
    "MET's"
  ];
  bool PSession1 = false;
  bool PSession2 = false;

  bool written = false;
  bool patient = false;
  bool check = false;

  void initState() {
    super.initState();
    DateInput.text = "";
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
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            title: Text(
              "Day - 5",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "DAY 5",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextFieldWidget_Date(
                              catkey: 'DAY5',
                              LabelText: '',
                              index: 1,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 2,
                              Num: false,
                              hintText: 'Therapist Name',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY5',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 3,
                              Num: false,
                              hintText: 'Designation',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY5',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text(
                                        "Written home exercise / activity guideline reviewed"),
                                    value: written,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (written) {
                                          written = false;
                                        } else {
                                          written = true;
                                        }
                                        Physiotherapist.Day5[4][0] =
                                            written.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Patient given written information on outpatient cardiac rehabilitation"),
                                    value: patient,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (patient) {
                                          patient = false;
                                        } else {
                                          patient = true;
                                        }
                                        Physiotherapist.Day5[5][0] =
                                            patient.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Check for understanding of activity guidelines"),
                                    value: check,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (check) {
                                          check = false;
                                        } else {
                                          check = true;
                                        }
                                        Physiotherapist.Day5[6][0] =
                                            check.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    color: const Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: const Color(0xff4A64FE)),
                                ),
                                labelText: "Given To",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: givento[0],
                              items: givento.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Physiotherapist.Day5[7][0] = val.toString();
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 8,
                              Num: false,
                              hintText: 'Name',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY5',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 9,
                              Num: false,
                              hintText: 'Time',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY5',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 10,
                              Num: false,
                              hintText: 'Therapist Comments',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY5',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "EXERCISES – STANDING ON A FIRM SURFACE",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff4A64FE)),
                                ),
                                labelText: "Session",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: const Color(0xff4A64FE),
                                ),
                              ),
                              value: PSession[0],
                              items: PSession.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  if (val == "Session - 1") {
                                    WS1 = true;
                                  } else {
                                    WS1 = false;
                                  }
                                  if (val == "Session - 2") {
                                    WS2 = true;
                                  } else {
                                    WS2 = false;
                                  }
                                });
                              },
                            ),
                            WS1
                                ? CheckboxListTile(
                                    title: const Text(
                                        "Climbing one flight of stairs"),
                                    value: Walking1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Walking1) {
                                          Walking1 = false;
                                        } else {
                                          Walking1 = true;
                                        }
                                        Physiotherapist.Day5[11][0] =
                                            Walking1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            WS2
                                ? CheckboxListTile(
                                    title: const Text(
                                        "Walk 240 meters in 3 minutes"),
                                    value: Walking2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Walking2) {
                                          Walking2 = false;
                                        } else {
                                          Walking2 = true;
                                        }
                                        Physiotherapist.Day5[12][0] =
                                            Walking2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "Hall ambulation as tolerated & Climbing full flight of stairs one step at a time (or as required at home) up and down:",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 13,
                              Num: false,
                              hintText: 'Description',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY5',
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: new Text(
                                    "MONITORING PARAMETERS & RESPONSES",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelStyle:
                                    const TextStyle(color: Color(0xff4A64FE)),
                                focusColor: const Color(0xff4A64FE),
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Color(0xff4A64FE)),
                                ),
                                labelText: "Session",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: const Color(0xff4A64FE),
                                ),
                              ),
                              value: PSession[0],
                              items: PSession.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  if (val == "Session - 1") {
                                    PSession1 = true;
                                  } else {
                                    PSession1 = false;
                                  }
                                  if (val == "Session - 2") {
                                    PSession2 = true;
                                  } else {
                                    PSession2 = false;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            PSession1
                                ? Row(children: [
                                    Flexible(
                                      child: ListView.builder(
                                          physics: const ScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: Parameters.length,
                                          itemBuilder:
                                              (BuildContext ctxt, int index) {
                                            return Wrap(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  Parameters[index],
                                                  style: GoogleFonts.lato(
                                                    color:
                                                        const Color(0xff4A64FE),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 14,
                                                Num: false,
                                                hintText: 'REST',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY5',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 14,
                                                Num: false,
                                                hintText: 'EXERCISE',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY5DESC',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              ),
                                            ]);
                                          }),
                                    ),
                                  ])
                                : Container(),
                            PSession1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 19,
                                    Num: false,
                                    hintText: 'Therapist Comments',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY5',
                                  )
                                : Container(),
                            PSession2
                                ? Row(children: [
                                    Flexible(
                                      child: ListView.builder(
                                          physics: const ScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: Parameters.length,
                                          itemBuilder:
                                              (BuildContext ctxt, int index) {
                                            return Wrap(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  Parameters[index],
                                                  style: GoogleFonts.lato(
                                                    color:
                                                        const Color(0xff4A64FE),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 20,
                                                Num: false,
                                                hintText: 'REST',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY5',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 20,
                                                Num: false,
                                                hintText: 'EXERCISE',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY5DESC',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              )
                                            ]);
                                          }),
                                    ),
                                  ])
                                : Container(),
                            PSession2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 25,
                                    Num: false,
                                    hintText: 'Therapist Comments',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY5',
                                  )
                                : Container(),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Physiotherapist.Day5[0][0] =
                                CurrentPatientInfo.PatientID;

                            Map map = Physiotherapist.Day5.asMap();
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

                            Physiotherapist_Upload upload =
                                new Physiotherapist_Upload();
                            upload.UploadDay5(blocksMapOfIntToString)
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
                            title: 'Next',
                            hasBorder: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
