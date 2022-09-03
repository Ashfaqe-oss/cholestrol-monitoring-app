import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_Upload/Counsellor_Upload.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Values.dart';

class Patient_Score extends StatefulWidget {
  const Patient_Score({Key? key}) : super(key: key);
  @override
  _Patient_ScoreState createState() => _Patient_ScoreState();
}

class _Patient_ScoreState extends State<Patient_Score> {
  final List<String> Scores = [
    "All of the time",
    "Most of the time",
    "More than half the time",
    "Less than half the time",
    "Some of the time",
    "At no time"
  ];
  final List<int> ScoreValue = [5, 4, 3, 2, 1, 0];
  int s1 = 0, s2 = 0, s3 = 0, s4 = 0, s5 = 0;
  int Score = 0;
  @override
  void initState() {
    Score = 0;
    super.initState();
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
            centerTitle: true,
            elevation: 0,
            title: Text(
              "Patient Score",
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "I have felt cheerful in good spirits.",
                                      style: GoogleFonts.lato(
                                        color: const Color(0xff4A64FE),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Scores[0],
                              items: Scores.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.PatientScore[1] = val.toString();
                                setState(() {
                                  s1 = 0;
                                  if (val == "All of the time") {
                                    s1 = ScoreValue[0];
                                  }
                                  if (val == "Most of the time") {
                                    s1 = ScoreValue[1];
                                  }
                                  if (val == "More than half the time") {
                                    s1 = ScoreValue[2];
                                  }
                                  if (val == "Less than half the time") {
                                    s1 = ScoreValue[3];
                                  }
                                  if (val == "Some of the time") {
                                    s1 = ScoreValue[4];
                                  }
                                  if (val == "At no time") {
                                    s1 = ScoreValue[5];
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "I have felt calm and relaxed ",
                                      style: GoogleFonts.lato(
                                        color: const Color(0xff4A64FE),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Scores[0],
                              items: Scores.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.PatientScore[2] = val.toString();

                                setState(() {
                                  print(val);

                                  s2 = 0;
                                  if (val == "All of the time") {
                                    s2 = ScoreValue[0];
                                  }
                                  if (val == "Most of the time") {
                                    s2 = ScoreValue[1];
                                  }
                                  if (val == "More than half the time") {
                                    s2 = ScoreValue[2];
                                  }
                                  if (val == "Less than half the time") {
                                    s2 = ScoreValue[3];
                                  }
                                  if (val == "Some of the time") {
                                    s2 = ScoreValue[4];
                                  }
                                  if (val == "At no time") {
                                    s2 = ScoreValue[5];
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "I have felt active and vigorous ",
                                      style: GoogleFonts.lato(
                                        color: const Color(0xff4A64FE),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Scores[0],
                              items: Scores.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.PatientScore[3] = val.toString();

                                setState(() {
                                  s3 = 0;
                                  if (val == "All of the time") {
                                    s3 = ScoreValue[0];
                                  }
                                  if (val == "Most of the time") {
                                    s3 = ScoreValue[1];
                                  }
                                  if (val == "More than half the time") {
                                    s3 = ScoreValue[2];
                                  }
                                  if (val == "Less than half the time") {
                                    s3 = ScoreValue[3];
                                  }
                                  if (val == "Some of the time") {
                                    s3 = ScoreValue[4];
                                  }
                                  if (val == "At no time") {
                                    s3 = ScoreValue[5];
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "I woke up feeling fresh and rested ",
                                      style: GoogleFonts.lato(
                                        color: const Color(0xff4A64FE),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Scores[0],
                              items: Scores.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.PatientScore[4] = val.toString();

                                setState(() {
                                  s4 = 0;
                                  if (val == "All of the time") {
                                    s4 = ScoreValue[0];
                                  }
                                  if (val == "Most of the time") {
                                    s4 = ScoreValue[1];
                                  }
                                  if (val == "More than half the time") {
                                    s4 = ScoreValue[2];
                                  }
                                  if (val == "Less than half the time") {
                                    s4 = ScoreValue[3];
                                  }
                                  if (val == "Some of the time") {
                                    s4 = ScoreValue[4];
                                  }
                                  if (val == "At no time") {
                                    s4 = ScoreValue[5];
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "My daily life has been filled with things that interest me.",
                                      style: GoogleFonts.lato(
                                        color: const Color(0xff4A64FE),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
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
                                labelText: "Select",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Scores[0],
                              items: Scores.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                setState(() {
                                  Counsellor.PatientScore[5] = val.toString();
                                  s5 = 0;
                                  if (val == "All of the time") {
                                    s5 = ScoreValue[0];
                                  }
                                  if (val == "Most of the time") {
                                    s5 = ScoreValue[1];
                                  }
                                  if (val == "More than half the time") {
                                    s5 = ScoreValue[2];
                                  }
                                  if (val == "Less than half the time") {
                                    s5 = ScoreValue[3];
                                  }
                                  if (val == "Some of the time") {
                                    s5 = ScoreValue[4];
                                  }
                                  if (val == "At no time") {
                                    s5 = ScoreValue[5];
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Score out of 25 : " +
                                      (s1 + s2 + s3 + s4 + s5).toString(),
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "During the past 30 days how many days have you felt angry at least once?",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 7,
                            Num: false,
                            hintText: '',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'COUNSELLOR',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "During the past 30 days how many days have you felt worried, tense or anxious?",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 8,
                            Num: false,
                            hintText: '',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'COUNSELLOR',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "During the past 30 days how many days have you felt sad or depressed?",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 9,
                            Num: false,
                            hintText: '',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'COUNSELLOR',
                          ),
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Counsellor.PatientScore[0] =
                                CurrentPatientInfo.PatientID;
                            Counsellor.PatientScore[6] =
                                (s1 + s2 + s3 + s4 + s5).toString();
                            Map map = Counsellor.PatientScore.asMap();
                            final Map<String, String> blocksMapOfIntToString = {
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

                            Counsellor_Upload upload = new Counsellor_Upload();
                            upload.UploadPatientScore(blocksMapOfIntToString)
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
            ],
          ),
        ),
      ),
    );
  }
}
