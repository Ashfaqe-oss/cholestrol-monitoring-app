import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/Label.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Physiotherapist_Upload/Physio_Values.dart';
import '../Physiotherapist_Upload/Physiotherapist_Upload.dart';

class Day2 extends StatefulWidget {
  const Day2({Key? key}) : super(key: key);
  @override
  _Day2State createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  TextEditingController DateInput = new TextEditingController();
  List<String> givento = ["Patient", "Patient Attendants", " Care Giver"];
  List<String> UpperLimb = ["Session - 1 (Sitting)", "Session - 2 (Standing)"];
  List<String> LowerLimb = ["Session - 1 (Sitting)", "Session - 2 (Standing)"];
  List<String> PSession = ["Session - 1", "Session - 2"];

  bool ul1 = false;
  bool ul2 = false;
  bool ll1 = false;
  bool ll2 = false;

  bool Shoulder1 = false;
  bool Elbow1 = false;
  bool Wrist1 = false;
  bool Fingers1 = false;

  bool Hip1 = false;
  bool Knee1 = false;
  bool Ankle1 = false;
  bool Toes1 = false;

  bool Shoulder2 = false;
  bool Elbow2 = false;
  bool Wrist2 = false;
  bool Fingers2 = false;

  bool Hip2 = false;
  bool Knee2 = false;
  bool Ankle2 = false;
  bool Toes2 = false;

  List<String> Parameters = [
    "Heart Rate",
    "SPO2",
    "Blood Pleasure",
    "Borg's Scale",
    "MET's"
  ];
  bool PSession1 = false;
  bool PSession2 = false;

  bool Diabetes = false;
  bool Hypertension = false;
  bool Dyslipidemia = false;
  bool Obesity = false;
  bool Smoking = false;
  bool Fruits = false;

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
              "Day - 2",
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
                                    "DAY 2",
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
                              LabelText: '',
                              index: 1,
                              catkey: 'DAY2',
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
                              catkey: 'DAY2',
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
                              catkey: 'DAY2',
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child:
                                  Heading("Identification of CAD Risk Factors"),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text("Diabetes"),
                                    value: Diabetes,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Diabetes) {
                                          Diabetes = false;
                                        } else {
                                          Diabetes = true;
                                        }
                                        Physiotherapist.Day2[4][0] =
                                            Diabetes.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Hypertension"),
                                    value: Hypertension,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Hypertension) {
                                          Hypertension = false;
                                        } else {
                                          Hypertension = true;
                                        }
                                        Physiotherapist.Day2[5][0] =
                                            Hypertension.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Dyslipidemia"),
                                    value: Dyslipidemia,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Dyslipidemia) {
                                          Dyslipidemia = false;
                                        } else {
                                          Dyslipidemia = true;
                                        }
                                        Physiotherapist.Day2[6][0] =
                                            Dyslipidemia.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Obesity"),
                                    value: Obesity,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Obesity) {
                                          Obesity = false;
                                        } else {
                                          Obesity = true;
                                        }
                                        Physiotherapist.Day2[7][0] =
                                            Obesity.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Smoking, Alcohol"),
                                    value: Smoking,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Smoking) {
                                          Smoking = false;
                                        } else {
                                          Smoking = true;
                                        }
                                        Physiotherapist.Day2[8][0] =
                                            Smoking.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Insufficient Fruits & Vegetable Intake"),
                                    value: Fruits,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Fruits) {
                                          Fruits = false;
                                        } else {
                                          Fruits = true;
                                        }
                                        Physiotherapist.Day2[9][0] =
                                            Fruits.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                ],
                              ),
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
                                      color: Color(0xff4A64FE)),
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
                                Physiotherapist.Day2[10][0] = val.toString();
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
                              index: 11,
                              Num: false,
                              hintText: 'Name',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY2',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 12,
                              Num: false,
                              hintText: 'Time',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY2',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 13,
                              Num: false,
                              hintText: 'Therapist Comments',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY2',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 14,
                              Num: false,
                              hintText:
                                  'MOBILIZE TO CHAIR SITTING (15 – 30 minutes):',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY2',
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "CIRCULATORY EXERCISES - SITTING IN THE CHAIR & IN STANDING",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "UPPER LIMB ROM EXERCISES",
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
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: UpperLimb[0],
                              items: UpperLimb.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  if (val == "Session - 1 (Sitting)") {
                                    ul1 = true;
                                  } else {
                                    ul1 = false;
                                  }
                                  if (val == "Session - 2 (Standing)") {
                                    ul2 = true;
                                  } else {
                                    ul2 = false;
                                  }
                                });
                              },
                            ),
                            ul1
                                ? CheckboxListTile(
                                    title: const Text("Shoulder"),
                                    value: Shoulder1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Shoulder1) {
                                          Shoulder1 = false;
                                        } else {
                                          Shoulder1 = true;
                                        }
                                        Physiotherapist.Day2[15][0] =
                                            Shoulder1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Shoulder1 && ul1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 15,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul1
                                ? CheckboxListTile(
                                    title: const Text("Elbow"),
                                    value: Elbow1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Elbow1) {
                                          Elbow1 = false;
                                        } else {
                                          Elbow1 = true;
                                        }
                                        Physiotherapist.Day2[16][0] =
                                            Elbow1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Elbow1 && ul1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 16,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul1
                                ? CheckboxListTile(
                                    title: const Text("Wrist"),
                                    value: Wrist1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Wrist1) {
                                          Wrist1 = false;
                                        } else {
                                          Wrist1 = true;
                                        }
                                        Physiotherapist.Day2[17][0] =
                                            Wrist1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Wrist1 && ul1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 17,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul1
                                ? CheckboxListTile(
                                    title: const Text("Fingers"),
                                    value: Fingers1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Fingers1) {
                                          Fingers1 = false;
                                        } else {
                                          Fingers1 = true;
                                        }
                                        Physiotherapist.Day2[18][0] =
                                            Fingers1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Fingers1 && ul1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 18,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul2
                                ? CheckboxListTile(
                                    title: const Text("Shoulder"),
                                    value: Shoulder2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Shoulder2) {
                                          Shoulder2 = false;
                                        } else {
                                          Shoulder2 = true;
                                        }
                                        Physiotherapist.Day2[19][0] =
                                            Shoulder2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Shoulder2 && ul2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 19,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul2
                                ? CheckboxListTile(
                                    title: const Text("Elbow"),
                                    value: Elbow2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Elbow2) {
                                          Elbow2 = false;
                                        } else {
                                          Elbow2 = true;
                                        }
                                        Physiotherapist.Day2[20][0] =
                                            Elbow2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Elbow2 && ul2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 20,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul2
                                ? CheckboxListTile(
                                    title: const Text("Wrist"),
                                    value: Wrist2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Wrist2) {
                                          Wrist2 = false;
                                        } else {
                                          Wrist2 = true;
                                        }
                                        Physiotherapist.Day2[21][0] =
                                            Wrist2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Wrist2 && ul2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 21,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ul2
                                ? CheckboxListTile(
                                    title: const Text("Fingers"),
                                    value: Fingers2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Fingers2) {
                                          Fingers2 = false;
                                        } else {
                                          Fingers2 = true;
                                        }
                                        Physiotherapist.Day2[22][0] =
                                            Fingers2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Fingers2 && ul2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 22,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                  child: Row(
                                children: <Widget>[
                                  Flexible(
                                      child: Text(
                                    "LOWER LIMB ROM EXERCISES",
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
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: UpperLimb[0],
                              items: UpperLimb.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  if (val == "Session - 1 (Sitting)") {
                                    ll1 = true;
                                  } else {
                                    ll1 = false;
                                  }
                                  if (val == "Session - 2 (Standing)") {
                                    ll2 = true;
                                  } else {
                                    ll2 = false;
                                  }
                                });
                              },
                            ),
                            ll1
                                ? CheckboxListTile(
                                    title: const Text("Hip"),
                                    value: Hip1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Hip1) {
                                          Hip1 = false;
                                        } else {
                                          Hip1 = true;
                                        }
                                        Physiotherapist.Day2[23][0] =
                                            Hip1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Hip1 && ll1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 23,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll1
                                ? CheckboxListTile(
                                    title: const Text("Knee"),
                                    value: Knee1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Knee1) {
                                          Knee1 = false;
                                        } else {
                                          Knee1 = true;
                                        }
                                        Physiotherapist.Day2[24][0] =
                                            Knee1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Knee1 && ll1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 24,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll1
                                ? CheckboxListTile(
                                    title: const Text("Ankle"),
                                    value: Ankle1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Ankle1) {
                                          Ankle1 = false;
                                        } else {
                                          Ankle1 = true;
                                        }
                                        Physiotherapist.Day2[25][0] =
                                            Ankle1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Ankle1 && ll1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 25,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll1
                                ? CheckboxListTile(
                                    title: const Text("Toes"),
                                    value: Toes1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Toes1) {
                                          Toes1 = false;
                                        } else {
                                          Toes1 = true;
                                        }
                                        Physiotherapist.Day2[26][0] =
                                            Toes1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Toes1 && ll1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 26,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll2
                                ? CheckboxListTile(
                                    title: const Text("Hip"),
                                    value: Hip2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Hip2) {
                                          Hip2 = false;
                                        } else {
                                          Hip2 = true;
                                        }
                                        Physiotherapist.Day2[27][0] =
                                            Hip2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Hip2 && ll2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 27,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll2
                                ? CheckboxListTile(
                                    title: const Text("Knee"),
                                    value: Knee2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Knee2) {
                                          Knee2 = false;
                                        } else {
                                          Knee2 = true;
                                        }
                                        Physiotherapist.Day2[28][0] =
                                            Knee2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Knee2 && ll2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 28,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll2
                                ? CheckboxListTile(
                                    title: const Text("Ankle"),
                                    value: Ankle2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Ankle2) {
                                          Ankle2 = false;
                                        } else {
                                          Ankle2 = true;
                                        }
                                        Physiotherapist.Day2[29][0] =
                                            Ankle2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Ankle2 && ll2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 29,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
                            ll2
                                ? CheckboxListTile(
                                    title: const Text("Toes"),
                                    value: Toes2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Toes2) {
                                          Toes2 = false;
                                        } else {
                                          Toes2 = true;
                                        }
                                        Physiotherapist.Day2[30][0] =
                                            Toes2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Toes2 && ll2
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 30,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2DESC',
                                  )
                                : Container(),
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
                                  color: Color(0xff4A64FE),
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
                                                index: index + 31,
                                                Num: false,
                                                hintText: 'REST',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY2',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 31,
                                                Num: false,
                                                hintText: 'EXERCISE',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY2DESC',
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
                                    index: 36,
                                    Num: false,
                                    hintText: 'Therapist Comments',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: '',
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
                                                index: index + 37,
                                                Num: false,
                                                hintText: 'REST',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY2DESC',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 37,
                                                Num: false,
                                                hintText: 'EXERCISE',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY2DESC',
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
                                    index: 42,
                                    Num: false,
                                    hintText: 'Therapist Comments',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY2',
                                  )
                                : Container(),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 43,
                              Num: false,
                              hintText: 'Limited Hall Ambulation (Session II )',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY2',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Physiotherapist.Day2[0][0] =
                                CurrentPatientInfo.PatientID;

                            Map map = Physiotherapist.Day2.asMap();
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
                            upload.UploadDay2(blocksMapOfIntToString)
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
