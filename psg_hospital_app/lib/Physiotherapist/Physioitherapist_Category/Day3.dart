import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Physiotherapist_Upload/Physio_Values.dart';
import '../Physiotherapist_Upload/Physiotherapist_Upload.dart';

class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);
  @override
  _Day3State createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  TextEditingController DateInput = new TextEditingController();
  List<String> givento = ["Patient", "Patient Attendants", " Care Giver"];
  List<String> PSession = ["Session - 1", "Session - 2"];

  bool Session1 = false;
  bool Session2 = false;

  bool KneeBending = false;
  bool DoubleArmRaise = false;
  bool LateralTrunkBends = false;
  bool Walking1 = false;

  bool HipCircling = false;
  bool TrunkCircles = false;
  bool TrunkTwist = false;
  bool Walking2 = false;

  bool Shoulder2 = false;
  bool Elbow2 = false;
  bool Wrist2 = false;
  bool Fingers2 = false;

  List<String> Parameters = [
    "Heart Rate",
    "SPO2",
    "Blood Pleasure",
    "Borg's Scale",
    "MET's"
  ];
  bool PSession1 = false;
  bool PSession2 = false;

  bool infarct = false;
  bool need = false;
  bool impact = false;
  bool teach = false;

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
              "Day - 3",
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
                                    "DAY 3",
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
                              index: 1,
                              LabelText: '',
                              catkey: 'DAY3',
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
                              catkey: 'DAY3',
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
                              catkey: 'DAY3',
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text("Size of Infarct"),
                                    value: infarct,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (infarct) {
                                          infarct = false;
                                        } else {
                                          infarct = true;
                                        }
                                        Physiotherapist.Day3[4][0] =
                                            infarct.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Need for gradual resumption of activities"),
                                    value: need,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (need) {
                                          need = false;
                                        } else {
                                          need = true;
                                        }
                                        Physiotherapist.Day3[5][0] =
                                            need.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Impact of exercise on reducing risk factors"),
                                    value: impact,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (impact) {
                                          impact = false;
                                        } else {
                                          impact = true;
                                        }
                                        Physiotherapist.Day3[6][0] =
                                            impact.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Teach using Borg's Scale for rating of perceived excertion"),
                                    value: teach,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (teach) {
                                          teach = false;
                                        } else {
                                          teach = true;
                                        }
                                        Physiotherapist.Day3[7][0] =
                                            teach.toString();
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
                                Physiotherapist.Day3[8][0] = val.toString();
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
                              index: 9,
                              Num: false,
                              hintText: 'Name',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY3',
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
                              hintText: 'Time',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY3',
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
                              hintText: 'Therapist Comments',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'DAY3',
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
                                    Session1 = true;
                                  } else {
                                    Session1 = false;
                                  }
                                  if (val == "Session - 2") {
                                    Session2 = true;
                                  } else {
                                    Session2 = false;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Session1
                                ? CheckboxListTile(
                                    title: const Text("Knee Bending"),
                                    value: KneeBending,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (KneeBending) {
                                          KneeBending = false;
                                        } else {
                                          KneeBending = true;
                                        }
                                        Physiotherapist.Day3[12][0] =
                                            KneeBending.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            KneeBending && Session1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 12,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session1
                                ? CheckboxListTile(
                                    title: const Text("Double Arm Raise"),
                                    value: DoubleArmRaise,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (DoubleArmRaise) {
                                          DoubleArmRaise = false;
                                        } else {
                                          DoubleArmRaise = true;
                                        }
                                        Physiotherapist.Day3[13][0] =
                                            DoubleArmRaise.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            DoubleArmRaise && Session1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 13,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session1
                                ? CheckboxListTile(
                                    title: const Text("Lateral Trunk Bends"),
                                    value: LateralTrunkBends,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (LateralTrunkBends) {
                                          LateralTrunkBends = false;
                                        } else {
                                          LateralTrunkBends = true;
                                        }
                                        Physiotherapist.Day3[14][0] =
                                            LateralTrunkBends.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            LateralTrunkBends && Session1
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 14,
                                    Num: false,
                                    hintText: 'Description',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session1
                                ? CheckboxListTile(
                                    title: const Text(
                                        "Walking for 2.5 minutes (90 meters)"),
                                    value: Walking1,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Walking1) {
                                          Walking1 = false;
                                        } else {
                                          Walking1 = true;
                                        }
                                        Physiotherapist.Day3[15][0] =
                                            Walking1.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Walking1 && Session1
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
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session2
                                ? CheckboxListTile(
                                    title: const Text("Hip Circling"),
                                    value: HipCircling,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (HipCircling) {
                                          HipCircling = false;
                                        } else {
                                          HipCircling = true;
                                        }
                                        Physiotherapist.Day3[16][0] =
                                            HipCircling.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            HipCircling && Session2
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
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session2
                                ? CheckboxListTile(
                                    title: const Text("Trunk Circles"),
                                    value: TrunkCircles,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (TrunkCircles) {
                                          TrunkCircles = false;
                                        } else {
                                          TrunkCircles = true;
                                        }
                                        Physiotherapist.Day3[17][0] =
                                            TrunkCircles.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            TrunkCircles && Session2
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
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session2
                                ? CheckboxListTile(
                                    title: const Text(
                                        "Trunk Twist with Single arm swing"),
                                    value: TrunkTwist,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (TrunkTwist) {
                                          TrunkTwist = false;
                                        } else {
                                          TrunkTwist = true;
                                        }
                                        Physiotherapist.Day3[18][0] =
                                            TrunkTwist.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            TrunkTwist && Session2
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
                                    catkey: 'DAY3DESC',
                                  )
                                : Container(),
                            Session2
                                ? CheckboxListTile(
                                    title: const Text(
                                        "Walking for 2.5 Minutes(90 - 120 Meters"),
                                    value: Walking2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Walking2) {
                                          Walking2 = false;
                                        } else {
                                          Walking2 = true;
                                        }
                                        Physiotherapist.Day3[19][0] =
                                            Walking2.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  )
                                : Container(),
                            Walking2 && Session2
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
                                    catkey: 'DAY3DESC',
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
                                      color: const Color(0xff4A64FE)),
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
                                                index: index + 20,
                                                Num: false,
                                                hintText: 'REST',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: 'DAY3',
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
                                                catkey: 'DAY3DESC',
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
                                    index: 25,
                                    Num: false,
                                    hintText: 'Therapist Comments',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY3',
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
                                                index: index + 26,
                                                Num: false,
                                                hintText: 'REST',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: '',
                                              ),
                                              const SizedBox(
                                                height: 70.0,
                                              ),
                                              TextFieldWidget_M(
                                                onChanged: () {},
                                                Num_Lines: 1,
                                                error: false,
                                                index: index + 26,
                                                Num: false,
                                                hintText: 'EXERCISE',
                                                obscureText: false,
                                                prefixIconData:
                                                    Icons.arrow_right,
                                                suffixIconData:
                                                    Icons.verified_user,
                                                catkey: '',
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
                                    index: 31,
                                    Num: false,
                                    hintText: 'Therapist Comments',
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'DAY3',
                                  )
                                : Container(),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Physiotherapist.Day3[0][0] =
                                CurrentPatientInfo.PatientID;

                            Map map = Physiotherapist.Day3.asMap();
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
                            upload.UploadDay3(blocksMapOfIntToString)
                                .then((value) {
                              if (jsonDecode(value)["result"] == "SUCCESS") {
                                Navigator.pop(context);
                              } else {
                                ScaffoldMessenger.of(context)
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
