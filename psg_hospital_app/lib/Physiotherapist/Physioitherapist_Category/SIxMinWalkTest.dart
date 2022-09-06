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

class SixMinWalkTest extends StatefulWidget {
  const SixMinWalkTest({Key? key}) : super(key: key);
  @override
  _SixMinWalkTestState createState() => _SixMinWalkTestState();
}

class _SixMinWalkTestState extends State<SixMinWalkTest> {
  TextEditingController DateInput = new TextEditingController();

  List<String> Test = ["Pre - Test", "Post - Test"];

  bool Pretest = false;
  bool Posttest = false;

  bool BP1 = false;
  bool HR1 = false;
  bool Spo21 = false;

  bool BP2 = false;
  bool HR2 = false;
  bool Spo22 = false;

  String CurrentLap = "";

  List<String> Parameters = [
    "Heart Rate",
    "SPO2",
    "Blood Pleasure",
    "Borg's Scale",
    "MET's"
  ];
  bool PSession1 = false;
  bool PSession2 = false;

  List<String> Lap = [
    "Lap 1",
    "Lap 2",
    "Lap 3",
    "Lap 4",
    "Lap 5",
    "Lap 6",
    "Lap 7",
    "Lap 8",
    "Lap 9",
    "Lap 10"
  ];

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
              "6 Minutes Walk Test",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Date",
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
                        catkey: 'SIX',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Heading("Vital Parameters"),
                      ),
                      CheckboxListTile(
                        title: const Text("BP"),
                        value: BP1,
                        onChanged: (newValue) {
                          setState(() {
                            if (BP1) {
                              BP1 = false;
                            } else {
                              BP1 = true;
                            }
                            Physiotherapist.SixMinuteWalkTest[2][0] =
                                BP1.toString();
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      BP1
                          ? TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 2,
                              Num: false,
                              hintText: 'BP - (mmg)',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'SIXDESC',
                            )
                          : Container(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CheckboxListTile(
                        title: const Text("HR"),
                        value: HR1,
                        onChanged: (newValue) {
                          setState(() {
                            if (HR1) {
                              HR1 = false;
                            } else {
                              HR1 = true;
                            }
                            Physiotherapist.SixMinuteWalkTest[3][0] =
                                HR1.toString();
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      HR1
                          ? TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 3,
                              Num: false,
                              hintText: 'B / Min',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'SIXDESC',
                            )
                          : Container(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CheckboxListTile(
                        title: const Text("Spo2"),
                        value: Spo21,
                        onChanged: (newValue) {
                          setState(() {
                            if (Spo21) {
                              Spo21 = false;
                            } else {
                              Spo21 = true;
                            }
                            Physiotherapist.SixMinuteWalkTest[4][0] =
                                Spo21.toString();
                          });
                        },
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                      Spo21
                          ? TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 4,
                              Num: false,
                              hintText: 'Spo2 (%)',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'SIXDESC',
                            )
                          : Container(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Heading("Laps"),
                      ),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Color(0xff4A64FE)),
                          focusColor: const Color(0xff4A64FE),
                          filled: true,
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Color(0xff4A64FE)),
                          ),
                          labelText: "Lap",
                          prefixIcon: const Icon(
                            Icons.arrow_right,
                            size: 20,
                            color: const Color(0xff4A64FE),
                          ),
                        ),
                        value: Lap[0],
                        items: Lap.map((gen) {
                          return DropdownMenuItem(
                            value: gen,
                            child: Text(gen),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            CurrentLap = val.toString();
                          });
                        },
                      ),
                      CurrentLap == "Lap 1"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP1',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 2"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP2',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 3"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP3',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 4"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP4',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 5"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP5',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 6"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP6',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 7"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP7',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 8"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP8',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 9"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP9',
                                ),
                              ],
                            )
                          : Container(),
                      CurrentLap == "Lap 10"
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 0,
                                  Num: false,
                                  hintText: 'Total Distance',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 1,
                                  Num: false,
                                  hintText: 'Speed',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
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
                                  hintText: 'Met',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
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
                                  hintText: 'Vo2 Max',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 4,
                                  Num: false,
                                  hintText: 'Heart Rate',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 5,
                                  Num: false,
                                  hintText: 'Saturation',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Heading(
                                      "Post-Test Parameters $CurrentLap"),
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 6,
                                  Num: false,
                                  hintText: "Immediate",
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFieldWidget_M(
                                  onChanged: () {},
                                  Num_Lines: 1,
                                  error: false,
                                  index: 7,
                                  Num: false,
                                  hintText: 'One Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
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
                                  hintText: 'Second Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
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
                                  hintText: 'Third Minute',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
                                  catkey: 'LAP10',
                                ),
                              ],
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
                      Physiotherapist.SixMinuteWalkTest[0][0] =
                          CurrentPatientInfo.PatientID;

                      Map map = Physiotherapist.SixMinuteWalkTest.asMap();
                      final Map<String, List<String>> blocksMapOfIntToString = {
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

                      Physiotherapist_Upload upload =
                          new Physiotherapist_Upload();
                      upload.UploadDay1(blocksMapOfIntToString).then((value) {
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
                  const SizedBox(
                    height: 10.0,
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
