import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Physioitherapist_Category/PhysioCategory_List.dart';
import 'package:psg_hospital_app/Physiotherapist/Physiotherapist_Upload/Physio_Values.dart';
import 'package:psg_hospital_app/Physiotherapist/Physiotherapist_Upload/Physiotherapist_Upload.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/Label.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';

class Assessment extends StatefulWidget {
  const Assessment({Key? key}) : super(key: key);

  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  final List<String> Marital_Status = [
    'Married',
    'Unmarried',
    'Divorced',
  ];

  String _currentMaritalType = "";
  final List<String> Liveswith = [
    'Joint Family',
    'Nuclear Family',
    'Micro Nuclear Family',
  ];
  String _currentLiveswithType = "";
  final List<String> Accommodation = [
    'Rural',
    'Urban',
    'Crowded',
    'Isolated',
    'Ground Floor',
    'Stairs - Steps',
    'Stairs - Flights',
  ];
  String _currentAccommodationType = "";
  final List<String> AssistiveEquip = [
    'Hearing aids',
    'Spectacles',
    'Mobility aids',
  ];
  String _currentAssistiveEquipType = "";
  final List<String> WorkingStatus = [
    'Sedentary',
    'Mobile',
    'Strenuous',
  ];
  String _currentWorkingStatusType = "";
  final List<String> WorkingEnvironment = [
    'Calm',
    'Noisy',
    'Polluted',
    'Hygiene',
  ];
  String _currentWorkingEnvironmentType = "";
  final List<String> ProbAtWork = [
    'Fear of Angina',
    'Fear of Dyspnea',
    'Fear of Palpitations',
    'Others',
  ];
  String _currentProbAtWorkType = "";
  final List<String> Hobbies = [
    'Indoor-Gaming',
    'Outdoor-Gaming',
    'Sedentary Hobbies',
    'Others',
  ];
  String _currentHobbiesType = "";
  bool Others = false;

  bool Rural = false;
  bool Urban = false;
  bool Crowded = false;
  bool Isolated = false;
  bool Ground_Floor = false;
  bool Stairs = false;

  bool HearingAids = false;
  bool Spectacles = false;
  bool MobilityAids = false;

  void initState() {
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
              "Assessment",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Demographic Data",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
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
                              hintText: 'Rehab No: PMR/CR/',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_Date(
                                LabelText: "Date of MI",
                                catkey: "ASSESSMENT",
                                index: 2),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_Date(
                              LabelText: "Date of assessment",
                              catkey: 'ASSESSMENT',
                              index: 3,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_Date(
                                LabelText: "Date of Admission",
                                catkey: "ASSESSMENT",
                                index: 4),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_Date(
                                LabelText: "Date of Referral",
                                catkey: "ASSESSMENT",
                                index: 5),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Socio Economic History",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Accommodation",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                CheckboxListTile(
                                  title: const Text("Rural"),
                                  value: Rural,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Rural) {
                                        Rural = false;
                                      } else {
                                        Rural = true;
                                        Urban = false;
                                      }
                                      Physiotherapist.Assessment[6] =
                                          Rural.toString();
                                      Physiotherapist.Assessment[7] =
                                          Urban.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("Urban"),
                                  value: Urban,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Urban) {
                                        Urban = false;
                                      } else {
                                        Urban = true;
                                        Rural = false;
                                      }
                                      Physiotherapist.Assessment[6] =
                                          Rural.toString();
                                      Physiotherapist.Assessment[7] =
                                          Urban.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Divider(),
                                CheckboxListTile(
                                  title: const Text("Crowded"),
                                  value: Crowded,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Crowded) {
                                        Crowded = false;
                                      } else {
                                        Crowded = true;
                                        Isolated = false;
                                      }
                                      Physiotherapist.Assessment[8] =
                                          Crowded.toString();
                                      Physiotherapist.Assessment[9] =
                                          Isolated.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("Isolated"),
                                  value: Isolated,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Isolated) {
                                        Isolated = false;
                                      } else {
                                        Isolated = true;
                                        Crowded = false;
                                      }
                                      Physiotherapist.Assessment[8] =
                                          Crowded.toString();
                                      Physiotherapist.Assessment[9] =
                                          Isolated.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Divider(),
                                CheckboxListTile(
                                  title: const Text("Ground Floor"),
                                  value: Ground_Floor,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Ground_Floor) {
                                        Ground_Floor = false;
                                      } else {
                                        Ground_Floor = true;
                                        Stairs = false;
                                      }
                                      Physiotherapist.Assessment[10] =
                                          Ground_Floor.toString();
                                      Physiotherapist.Assessment[11] =
                                          Stairs.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("Stairs"),
                                  value: Stairs,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Stairs) {
                                        Stairs = false;
                                      } else {
                                        Stairs = true;
                                        Ground_Floor = false;
                                      }
                                      Physiotherapist.Assessment[10] =
                                          Ground_Floor.toString();
                                      Physiotherapist.Assessment[11] =
                                          Stairs.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Stairs
                                    ? TextFieldWidget_M(
                                        onChanged: () {},
                                        Num_Lines: 1,
                                        error: false,
                                        index: 12,
                                        Num: false,
                                        hintText: 'No of Steps/Flight',
                                        obscureText: false,
                                        prefixIconData: Icons.arrow_right,
                                        suffixIconData: Icons.verified_user,
                                        catkey: 'ASSESSMENT',
                                      )
                                    : Container(),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Assistive Equipments",
                                        style: GoogleFonts.lato(
                                          color: const Color(0xff4A64FE),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CheckboxListTile(
                                  title: const Text("Hearing Aids"),
                                  value: HearingAids,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (HearingAids) {
                                        HearingAids = false;
                                      } else {
                                        HearingAids = true;
                                      }
                                      Physiotherapist.Assessment[13] =
                                          HearingAids.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("Spectacles"),
                                  value: Spectacles,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Spectacles) {
                                        Spectacles = false;
                                      } else {
                                        Spectacles = true;
                                      }
                                      Physiotherapist.Assessment[14] =
                                          Spectacles.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("Mobility Aids"),
                                  value: MobilityAids,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (MobilityAids) {
                                        MobilityAids = false;
                                      } else {
                                        MobilityAids = true;
                                      }
                                      Physiotherapist.Assessment[15] =
                                          MobilityAids.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff4A64FE)),
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
                                    labelText: "Job Nature",
                                    prefixIcon: const Icon(
                                      Icons.arrow_right,
                                      size: 20,
                                      color: Color(0xff4A64FE),
                                    ),
                                  ),
                                  value: WorkingStatus[0],
                                  items: WorkingStatus.map((gen) {
                                    return DropdownMenuItem(
                                      value: gen,
                                      child: Text(gen),
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    Physiotherapist.Assessment[16] =
                                        val.toString();
                                    setState(() {
                                      _currentWorkingStatusType =
                                          val.toString();
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                        fontSize: 16.0,
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
                                    labelText: "Working Environment",
                                    prefixIcon: const Icon(
                                      Icons.arrow_right,
                                      size: 20,
                                      color: Color(0xff4A64FE),
                                    ),
                                  ),
                                  value: WorkingEnvironment[0],
                                  items: WorkingEnvironment.map((gen) {
                                    return DropdownMenuItem(
                                      value: gen,
                                      child: Text(gen),
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    Physiotherapist.Assessment[17] =
                                        val.toString();
                                    setState(() {
                                      _currentWorkingEnvironmentType =
                                          val.toString();
                                    });
                                  },
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    labelStyle: const TextStyle(
                                        fontSize: 16.0,
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
                                    labelText:
                                        "Problems at work due to your condition",
                                    prefixIcon: const Icon(
                                      Icons.arrow_right,
                                      size: 20,
                                      color: const Color(0xff4A64FE),
                                    ),
                                  ),
                                  value: ProbAtWork[0],
                                  items: ProbAtWork.map((gen) {
                                    return DropdownMenuItem(
                                      value: gen,
                                      child: Text(gen),
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    Physiotherapist.Assessment[18] =
                                        val.toString();
                                    setState(() {
                                      _currentProbAtWorkType = val.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    fontSize: 16.0,
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
                                labelText: "Hobbies",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                              value: Hobbies[0],
                              items: Hobbies.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Physiotherapist.Assessment[19] = val.toString();
                                setState(() {
                                  if (val == "Others") {
                                    Others = true;
                                  } else {
                                    _currentHobbiesType = val.toString();
                                    Others = false;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Others
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 20,
                                    Num: false,
                                    hintText: 'Enter your Hobbies',
                                    obscureText: true,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'ASSESSMENT',
                                  )
                                : Container(),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Others != true
                                ? TextFieldWidget_M(
                                    onChanged: () {},
                                    Num_Lines: 1,
                                    error: false,
                                    index: 20,
                                    Num: false,
                                    hintText: _currentHobbiesType,
                                    obscureText: false,
                                    prefixIconData: Icons.arrow_right,
                                    suffixIconData: Icons.verified_user,
                                    catkey: 'ASSESSMENT',
                                  )
                                : Container(),
                            const SizedBox(
                              height: 18.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Physiotherapist_EntryField2()));
                              },
                              child: ButtonWidget(
                                title: 'Next',
                                hasBorder: false,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Physiotherapist_EntryField2 extends StatefulWidget {
  const Physiotherapist_EntryField2({Key? key}) : super(key: key);
  @override
  _Physiotherapist_EntryField2State createState() =>
      _Physiotherapist_EntryField2State();
}

class _Physiotherapist_EntryField2State
    extends State<Physiotherapist_EntryField2> {
  final List<String> MedicalDiagnosis = [
    'ACS - STEMI',
    'NSTEMI',
    'UNSTABLE ANGINA',
    'AWMI',
    'IWMI',
    'PWMI',
    'HLMI',
    'RVMI'
  ];

  bool acs = false;
  bool nstmi = false;
  bool unstableangina = false;
  bool awmi = false;
  bool iwmi = false;
  bool pwmi = false;
  bool hlmi = false;
  bool rvmi = false;

  String _currentMedicalDiagnosisType = "";
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
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
              "Medical History",
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
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Medical History",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 21,
                              Num: false,
                              hintText: 'Referred by',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Medical Diagnosis",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CheckboxListTile(
                              title: const Text("ACS - STEMI"),
                              value: acs,
                              onChanged: (newValue) {
                                setState(() {
                                  if (acs) {
                                    acs = false;
                                  } else {
                                    acs = true;
                                  }
                                  Physiotherapist.Assessment[22] =
                                      acs.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("NSTMI"),
                              value: nstmi,
                              onChanged: (newValue) {
                                setState(() {
                                  if (nstmi) {
                                    nstmi = false;
                                  } else {
                                    nstmi = true;
                                  }
                                });
                                Physiotherapist.Assessment[23] =
                                    nstmi.toString();
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("UNSTABLE ANGINA"),
                              value: unstableangina,
                              onChanged: (newValue) {
                                setState(() {
                                  if (unstableangina) {
                                    unstableangina = false;
                                  } else {
                                    unstableangina = true;
                                  }
                                });
                                Physiotherapist.Assessment[24] =
                                    unstableangina.toString();
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("AWMI"),
                              value: awmi,
                              onChanged: (newValue) {
                                setState(() {
                                  if (awmi) {
                                    awmi = false;
                                  } else {
                                    awmi = true;
                                  }
                                  Physiotherapist.Assessment[25] =
                                      awmi.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("IWMI"),
                              value: iwmi,
                              onChanged: (newValue) {
                                setState(() {
                                  if (iwmi) {
                                    iwmi = false;
                                  } else {
                                    iwmi = true;
                                  }
                                  Physiotherapist.Assessment[26] =
                                      iwmi.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("PWMI"),
                              value: pwmi,
                              onChanged: (newValue) {
                                setState(() {
                                  if (pwmi) {
                                    pwmi = false;
                                  } else {
                                    pwmi = true;
                                  }
                                });
                                Physiotherapist.Assessment[27] =
                                    pwmi.toString();
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("HLMI"),
                              value: hlmi,
                              onChanged: (newValue) {
                                setState(() {
                                  if (hlmi) {
                                    hlmi = false;
                                  } else {
                                    hlmi = true;
                                  }
                                  Physiotherapist.Assessment[28] =
                                      hlmi.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("RVMI"),
                              value: rvmi,
                              onChanged: (newValue) {
                                setState(() {
                                  if (rvmi) {
                                    rvmi = false;
                                  } else {
                                    rvmi = true;
                                  }
                                  Physiotherapist.Assessment[29] =
                                      rvmi.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 30,
                              Num: false,
                              hintText: 'Current Medical History',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 31,
                              Num: false,
                              hintText: 'Previous Treatment for this condition',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 32,
                              Num: false,
                              hintText: 'Past Medical / Surgical History',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 18.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) =>
                                          const Physiotherapist_EntryField3()),
                                );
                              },
                              child: ButtonWidget(
                                title: 'Next',
                                hasBorder: false,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Physiotherapist_EntryField3 extends StatefulWidget {
  const Physiotherapist_EntryField3({Key? key}) : super(key: key);

  @override
  _Physiotherapist_EntryField3State createState() =>
      _Physiotherapist_EntryField3State();
}

class _Physiotherapist_EntryField3State
    extends State<Physiotherapist_EntryField3> {
  TextEditingController CGPD = new TextEditingController();
  TextEditingController YearsOfSmoking = new TextEditingController();
  TextEditingController PY = new TextEditingController();

  bool Diabetes_Type1 = false;
  bool Diabetes_Type2 = false;
  bool Diabetes_PD = false;
  bool Diabetes_ND = false;
  bool Diabetes_RD = false;
  bool Diabetes_ID = false;

  bool Smoking = false;

  bool HyperTension_PD = false;
  bool HyperTension_ND = false;
  bool HyperTension_RD = false;
  bool HyperTension_ID = false;

  bool Alcohol = false;
  bool Alcohol_Regularly = false;
  bool Alcohol_Occasionally = false;

  bool Dyslipidemia_PD = false;
  bool Dyslipidemia_ND = false;
  bool Dyslipidemia_RD = false;
  bool Dyslipidemia_ID = false;

  bool Obesity_Central = false;
  bool Obesity_Android = false;
  bool Obesity_Gyneciod = false;
  bool Obesity_weight_gain = false;
  bool Obesity_weight_loss = false;

  bool Underweight_bmi = false;
  bool Healthyweight_bmi = false;
  bool overweight_bmi = false;
  bool obesity_bmi = false;

  bool Strength = false;
  bool Aerobics = false;
  bool HITT = false;

  bool FamilyHist_Yes = false;
  bool FamilyHist_No = false;
  List<String> PhysicalActivity = ["Strength", "Aerobics", "HITT"];
  String BMI = "";

  TextEditingController weight = new TextEditingController();
  TextEditingController height = new TextEditingController();
  void initState() {
    weight.text = "0";
    height.text = "0";
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
              "Physical Evaluation",
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
                                    "Risk Factors",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Obesity",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text("Central"),
                                    value: Obesity_Central,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Obesity_Central) {
                                          Obesity_Central = false;
                                        } else {
                                          Obesity_Central = true;
                                        }
                                      });
                                      Physiotherapist.Assessment[33] =
                                          Obesity_Central.toString();
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Android"),
                                    value: Obesity_Android,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Obesity_Android) {
                                          Obesity_Android = false;
                                        } else {
                                          Obesity_Android = true;
                                        }
                                        Physiotherapist.Assessment[34] =
                                            Obesity_Android.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Gynecoid"),
                                    value: Obesity_Gyneciod,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Obesity_Gyneciod) {
                                          Obesity_Gyneciod = false;
                                        } else {
                                          Obesity_Gyneciod = true;
                                        }
                                        Physiotherapist.Assessment[35] =
                                            Obesity_Gyneciod.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Sudden Weight Gain"),
                                    value: Obesity_weight_gain,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Obesity_weight_gain) {
                                          Obesity_weight_gain = false;
                                        } else {
                                          Obesity_weight_gain = true;
                                        }
                                        Physiotherapist.Assessment[36] =
                                            Obesity_weight_gain.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Sudden Weight Loss"),
                                    value: Obesity_weight_loss,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Obesity_weight_loss) {
                                          Obesity_weight_loss = false;
                                        } else {
                                          Obesity_weight_loss = true;
                                        }
                                        Physiotherapist.Assessment[37] =
                                            Obesity_weight_loss.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Physical Activity",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 38,
                              Num: false,
                              hintText: 'Walking Hours Per Day',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("Strength"),
                              value: Strength,
                              onChanged: (newValue) {
                                setState(() {
                                  if (Strength) {
                                    Strength = false;
                                  } else {
                                    Strength = true;
                                  }
                                  Physiotherapist.Assessment[39] =
                                      Strength.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("Aerobics"),
                              value: Aerobics,
                              onChanged: (newValue) {
                                setState(() {
                                  if (Aerobics) {
                                    Aerobics = false;
                                  } else {
                                    Aerobics = true;
                                  }
                                  Physiotherapist.Assessment[40] =
                                      Aerobics.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            CheckboxListTile(
                              title: const Text("HITT"),
                              value: HITT,
                              onChanged: (newValue) {
                                setState(() {
                                  if (HITT) {
                                    HITT = false;
                                  } else {
                                    HITT = true;
                                  }
                                  Physiotherapist.Assessment[41] =
                                      HITT.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  <-- leading Checkbox
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Physical Exercise",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 42,
                              Num: false,
                              hintText: 'Days per week',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 43,
                              Num: false,
                              hintText: 'Hours Per Day',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextField(
                              controller: weight,
                              onChanged: (value) {
                                setState(() {
                                  double bmi = (double.parse(weight.text) /
                                          double.parse(height.text) /
                                          double.parse(height.text)) *
                                      10000;
                                  print(bmi);
                                  if (bmi < 18.5) {
                                    BMI = "Under Weight";
                                  }
                                  if (bmi > 18.5 && bmi < 23) {
                                    BMI = "Healthy Weight";
                                  }
                                  if (bmi > 25 && bmi < 29.9) {
                                    BMI = "Over Weight";
                                  }
                                  if (bmi > 30) {
                                    BMI = "Obesity";
                                  }
                                });
                                Physiotherapist.Assessment[44] =
                                    weight.text.toString();
                              },
                              cursorColor: const Color(0xff4A64FE),
                              style: GoogleFonts.lato(
                                color: const Color(0xff4A64FE),
                                fontSize: 16.0,
                              ),
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
                                labelText: "Weight (Kgs)",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextField(
                              controller: height,
                              onChanged: (value) {
                                setState(() {
                                  double bmi = (double.parse(weight.text) /
                                          double.parse(height.text) /
                                          double.parse(height.text)) *
                                      10000;
                                  print(bmi);
                                  if (bmi < 18.5) {
                                    BMI = "Under Weight";
                                  }
                                  if (bmi > 18.5 && bmi < 23) {
                                    BMI = "Healthy Weight";
                                  }
                                  if (bmi > 25 && bmi < 29.9) {
                                    BMI = "Over Weight";
                                  }
                                  if (bmi > 30) {
                                    BMI = "Obesity";
                                  }
                                });
                                Physiotherapist.Assessment[45] =
                                    height.text.toString();
                              },
                              cursorColor: const Color(0xff4A64FE),
                              style: GoogleFonts.lato(
                                color: const Color(0xff4A64FE),
                                fontSize: 16.0,
                              ),
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
                                labelText: "Height (Cms)",
                                prefixIcon: const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: Color(0xff4A64FE),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 46,
                              Num: false,
                              hintText: 'Waist Circumference (Cms)',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 47,
                              Num: false,
                              hintText: 'Hip Circumference (Cms)',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BMI :" + BMI,
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 1,
                              error: false,
                              index: 49,
                              Num: false,
                              hintText: 'W:H ratio',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Physiotherapist.Assessment[48] = BMI;
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      const Physiotherapist_EntryField4()),
                            );
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

class Physiotherapist_EntryField4 extends StatefulWidget {
  const Physiotherapist_EntryField4({Key? key}) : super(key: key);

  @override
  _Physiotherapist_EntryField4State createState() =>
      _Physiotherapist_EntryField4State();
}

class _Physiotherapist_EntryField4State
    extends State<Physiotherapist_EntryField4> {
  TextEditingController CGPD = new TextEditingController();
  TextEditingController YearsOfSmoking = new TextEditingController();
  TextEditingController PY = new TextEditingController();

  bool Selfcare_dependent = false;
  bool Selfcare_independent = false;

  bool ADL_dependent = false;
  bool ADL_independent = false;

  bool Instrumental_ADL_dependent = false;
  bool Instrumental_ADL_independent = false;

  bool WatchingTV = false;
  bool PlayingCard = false;
  bool Garderning = false;
  bool Internet_Surfing = false;

  bool Pattern6a = false;
  bool Pattern6b = false;
  bool Pattern6c = false;
  bool Pattern6d = false;

  void initState() {
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
              "Functional Status",
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
                            Container(
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Previous Functional Status & Activity Level",
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Self Care",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text("Dependent"),
                                    value: Selfcare_dependent,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Selfcare_dependent) {
                                          Selfcare_dependent = false;
                                        } else {
                                          Selfcare_dependent = true;
                                          Selfcare_independent = false;
                                        }
                                        Physiotherapist.Assessment[50] =
                                            Selfcare_dependent.toString();
                                        Physiotherapist.Assessment[51] =
                                            Selfcare_independent.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Independent"),
                                    value: Selfcare_independent,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Selfcare_independent) {
                                          Selfcare_independent = false;
                                        } else {
                                          Selfcare_independent = true;
                                          Selfcare_dependent = false;
                                        }
                                        Physiotherapist.Assessment[50] =
                                            Selfcare_dependent.toString();
                                        Physiotherapist.Assessment[51] =
                                            Selfcare_independent.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Basic ADL",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text("Dependent"),
                                    value: ADL_dependent,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (ADL_dependent) {
                                          ADL_dependent = false;
                                        } else {
                                          ADL_dependent = true;
                                          ADL_independent = false;
                                        }
                                        Physiotherapist.Assessment[52] =
                                            ADL_dependent.toString();
                                        Physiotherapist.Assessment[53] =
                                            ADL_independent.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Independent"),
                                    value: ADL_independent,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (ADL_independent) {
                                          ADL_independent = false;
                                        } else {
                                          ADL_independent = true;
                                          ADL_dependent = false;
                                        }
                                        Physiotherapist.Assessment[52] =
                                            ADL_dependent.toString();
                                        Physiotherapist.Assessment[53] =
                                            ADL_independent.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 5,
                              error: false,
                              index: 54,
                              Num: false,
                              hintText: 'Work / Home Management',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Instrumental ADL",
                                    style: GoogleFonts.lato(
                                      color: const Color(0xff4A64FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  CheckboxListTile(
                                    title: const Text("Dependent"),
                                    value: Instrumental_ADL_dependent,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Instrumental_ADL_dependent) {
                                          Instrumental_ADL_dependent = false;
                                        } else {
                                          Instrumental_ADL_dependent = true;
                                          Instrumental_ADL_independent = false;
                                        }
                                        Physiotherapist.Assessment[55] =
                                            Instrumental_ADL_dependent
                                                .toString();
                                        Physiotherapist.Assessment[56] =
                                            Instrumental_ADL_independent
                                                .toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text("Independent"),
                                    value: Instrumental_ADL_independent,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Instrumental_ADL_independent) {
                                          Instrumental_ADL_independent = false;
                                        } else {
                                          Instrumental_ADL_independent = true;
                                          Instrumental_ADL_dependent = false;
                                        }
                                        Physiotherapist.Assessment[55] =
                                            Instrumental_ADL_dependent
                                                .toString();
                                        Physiotherapist.Assessment[56] =
                                            Instrumental_ADL_independent
                                                .toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFieldWidget_M(
                              onChanged: () {},
                              Num_Lines: 5,
                              error: false,
                              index: 57,
                              Num: false,
                              hintText: 'Community Activities',
                              obscureText: false,
                              prefixIconData: Icons.arrow_right,
                              suffixIconData: Icons.verified_user,
                              catkey: 'ASSESSMENT',
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                children: [
                                  Heading(
                                      "Functional & Therapeutic Status Classification"),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Pattern 6A: Primary Prevention/Risk Reduction for Cardiovascular/Pulmonary Disorders"),
                                    value: Pattern6a,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Pattern6a) {
                                          Pattern6a = false;
                                        } else {
                                          Pattern6a = true;
                                        }
                                        Physiotherapist.Assessment[58] =
                                            Pattern6a.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Pattern 6B: Impaired Aerobic Capacity/Endurance Associated With Deconditioning"),
                                    value: Pattern6b,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Pattern6b) {
                                          Pattern6b = false;
                                        } else {
                                          Pattern6b = true;
                                        }
                                        Physiotherapist.Assessment[59] =
                                            Pattern6b.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Pattern 6C: Impaired Ventilation, Respiration/Gas Exchange, and Aerobic Capacity/Endurance Associated With Airway Clearance Dysfunction"),
                                    value: Pattern6c,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Pattern6c) {
                                          Pattern6c = false;
                                        } else {
                                          Pattern6c = true;
                                        }
                                        Physiotherapist.Assessment[60] =
                                            Pattern6c.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  CheckboxListTile(
                                    title: const Text(
                                        "Pattern 6D: Impaired Aerobic Capacity/Endurance Associated With Cardiovascular Pump Dysfunction or Failure"),
                                    value: Pattern6d,
                                    onChanged: (newValue) {
                                      setState(() {
                                        if (Pattern6d) {
                                          Pattern6d = false;
                                        } else {
                                          Pattern6d = true;
                                        }
                                        Physiotherapist.Assessment[61] =
                                            Pattern6d.toString();
                                      });
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Physiotherapist.Assessment[0] =
                                CurrentPatientInfo.PatientID;

                            Map map = Physiotherapist.Assessment.asMap();
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

                            Physiotherapist_Upload upload =
                                new Physiotherapist_Upload();
                            upload.UploadAssessment(blocksMapOfIntToString)
                                .then((value) {
                              if (jsonDecode(value)["result"] == "SUCCESS") {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Category_Physio()));
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
