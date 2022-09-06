import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Values.dart';

class Res_Phy extends StatefulWidget {
  const Res_Phy({Key? key}) : super(key: key);

  @override
  _Res_PhyState createState() => _Res_PhyState();
}

class _Res_PhyState extends State<Res_Phy> {
  late bool NAD = false,
      Wheeze = false,
      Nasal_Prongs = false,
      O2_mask = false,
      NRM = false,
      Res_Creps = false,
      Res_Wheeze = false,
      Conscious = false,
      oriented = false,
      obeys_command = false,
      S1 = false,
      S2 = false,
      murmur = false,
      Clear = false,
      Creps = false;
  List<String> Cough = ["Effective", "Weak", "Insufficient"];
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
              "Respiratory System",
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Respiratory System",
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
                                  title: const Text("NAD"),
                                  value: NAD,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (NAD) {
                                        NAD = false;
                                      } else {
                                        NAD = true;
                                      }
                                      Doctor.Resp_Phy[1] = NAD.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                CheckboxListTile(
                                  title: const Text("Creps"),
                                  value: Creps,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Creps) {
                                        Creps = false;
                                      } else {
                                        Creps = true;
                                      }
                                      Doctor.Resp_Phy[2] = Creps.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                CheckboxListTile(
                                  title: const Text("Wheeze"),
                                  value: Wheeze,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Wheeze) {
                                        Wheeze = false;
                                      } else {
                                        Wheeze = true;
                                      }
                                      Doctor.Resp_Phy[3] = Wheeze.toString();
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
                                        "Oxygen Requirement",
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
                                  title: const Text("Nasal Prongs"),
                                  value: Nasal_Prongs,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (Nasal_Prongs) {
                                        Nasal_Prongs = false;
                                      } else {
                                        Nasal_Prongs = true;
                                      }
                                      Doctor.Resp_Phy[4] =
                                          Nasal_Prongs.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("O2 Mask"),
                                  value: O2_mask,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (O2_mask) {
                                        O2_mask = false;
                                      } else {
                                        O2_mask = true;
                                      }
                                      Doctor.Resp_Phy[5] = O2_mask.toString();
                                    });
                                  },
                                  controlAffinity: ListTileControlAffinity
                                      .leading, //  <-- leading Checkbox
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                CheckboxListTile(
                                  title: const Text("NRM"),
                                  value: NRM,
                                  onChanged: (newValue) {
                                    setState(() {
                                      if (NRM) {
                                        NRM = false;
                                      } else {
                                        NRM = true;
                                      }
                                      Doctor.Resp_Phy[6] = NRM.toString();
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
                                  index: 7,
                                  catkey: "RESP",
                                  Num: false,
                                  hintText: 'SpO2 (%)',
                                  obscureText: false,
                                  prefixIconData: Icons.arrow_right,
                                  suffixIconData: Icons.verified_user,
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
                                borderSide:
                                    const BorderSide(color: Color(0xff4A64FE)),
                              ),
                              labelText: "Cough",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                            value: Cough[0],
                            items: Cough.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child: Text(gen),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Doctor.Resp_Phy[8] = val.toString();
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Physical Examination",
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
                                  "Higher functions",
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
                            title: const Text("Conscious"),
                            value: Conscious,
                            onChanged: (newValue) {
                              setState(() {
                                if (Conscious) {
                                  Conscious = false;
                                } else {
                                  Conscious = true;
                                }
                                Doctor.Resp_Phy[9] = Conscious.toString();
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CheckboxListTile(
                            title: const Text("Oriented"),
                            value: oriented,
                            onChanged: (newValue) {
                              setState(() {
                                if (oriented) {
                                  oriented = false;
                                } else {
                                  oriented = true;
                                }
                                Doctor.Resp_Phy[10] = oriented.toString();
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CheckboxListTile(
                            title: const Text("Obeys Commands"),
                            value: obeys_command,
                            onChanged: (newValue) {
                              setState(() {
                                if (obeys_command) {
                                  obeys_command = false;
                                } else {
                                  obeys_command = true;
                                }
                                Doctor.Resp_Phy[11] = obeys_command.toString();
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
                            index: 12,
                            catkey: "RESP",
                            Num: false,
                            hintText: 'GCS ( _ /15)',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 13,
                            catkey: "RESP",
                            Num: false,
                            hintText: 'Inspection & Palpation',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Auscultation",
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
                                  " Heart sounds:",
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
                            title: const Text("S1"),
                            value: S1,
                            onChanged: (newValue) {
                              setState(() {
                                if (S1) {
                                  S1 = false;
                                } else {
                                  S1 = true;
                                }
                                Doctor.Resp_Phy[14] = S1.toString();
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CheckboxListTile(
                            title: const Text("S2"),
                            value: S2,
                            onChanged: (newValue) {
                              setState(() {
                                if (S2) {
                                  S2 = false;
                                } else {
                                  S2 = true;
                                }
                                Doctor.Resp_Phy[15] = S2.toString();
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CheckboxListTile(
                            title: const Text("Murmur"),
                            value: murmur,
                            onChanged: (newValue) {
                              setState(() {
                                if (murmur) {
                                  murmur = false;
                                } else {
                                  murmur = true;
                                }
                                Doctor.Resp_Phy[16] = murmur.toString();
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
                                  " Lung sounds:",
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
                            title: const Text("Clear"),
                            value: Clear,
                            onChanged: (newValue) {
                              setState(() {
                                if (Clear) {
                                  Clear = false;
                                } else {
                                  Clear = true;
                                }
                                Doctor.Resp_Phy[17] = Clear.toString();
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CheckboxListTile(
                            title: const Text("Creps"),
                            value: Creps,
                            onChanged: (newValue) {
                              setState(() {
                                if (Creps) {
                                  Creps = false;
                                } else {
                                  Creps = true;
                                }
                                Doctor.Resp_Phy[18] = Creps.toString();
                              });
                            },
                            controlAffinity: ListTileControlAffinity
                                .leading, //  <-- leading Checkbox
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 19,
                            catkey: "RESP",
                            Num: false,
                            hintText: 'Heart Rate & Rhythm',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 20,
                            catkey: "RESP",
                            Num: false,
                            hintText: 'Respiratory Rate & Rhythm',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              ///////////// COPYCODE ////////////////
                              Doctor.Resp_Phy[0] = CurrentPatientInfo.PatientID;
                              Map map = Doctor.Resp_Phy.asMap();
                              final Map<String, String> blocksMapOfIntToString =
                                  {
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

                              Doctor_Upload upload = new Doctor_Upload();
                              upload.UploadPatientRespPhy(
                                      blocksMapOfIntToString)
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
                              title: 'Save',
                              hasBorder: false,
                            ),
                          ),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
