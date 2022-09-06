import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:psg_hospital_app/Doctor/Data_Upload/Doctor_Upload.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Values.dart';

enum ImageSourceType { gallery, camera }

class BloodPressure extends StatefulWidget {
  const BloodPressure({Key? key}) : super(key: key);

  @override
  _BloodPressureState createState() => _BloodPressureState();
}

class _BloodPressureState extends State<BloodPressure> {
  String a = "";
  TextEditingController tempss = new TextEditingController();
  late XFile _image;
  late bool clot = false, pah = false;
  late bool singlevesseldisease = false,
      RegularlyIrregular = false,
      triplevesseldisease = false,
      branchvesseldisease = false,
      recanalizedcad = false,
      minorcad = false,
      medicalmanagement = false,
      PTCA = false,
      CABG = false;
  String CurrentClassDescriptionAngina = "", CurrentClassPatientSymptoms = "";
  List<String> DescriptionofAngina = [
    "Angina only with strenuous exertion",
    "Angina with moderate exertion",
    "Angina with mild exertion",
    "Angina at rest"
  ];
  List<String> PatientSymptoms = [
    "No limitation of physical",
    "Slight limitation of physical activity.",
    "Marked limitation of physical activity.",
    "Unable to carry on any \n physical activity without discomfort."
  ];
  bool fileupload = false;
  void initState() {
    super.initState();
  }

  Future getImagefromGallery(int val) async {
    final picker = ImagePicker();
    final imageFile = await picker.getImage(
      source: val == 0 ? ImageSource.values[0] : ImageSource.values[1],
    );
    //var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    File imagefile = File(imageFile!.path); //convert Path to File
    Uint8List imagebytes = await imagefile.readAsBytes();
    String base64string =
        base64.encode(imagebytes); //convert bytes to base64 string
    print(base64string);
    setState(() {
      Doctor.ClinicalExamination[12] = base64string.toString();
      fileupload = true;
    });
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
              "Clinical Examination",
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
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                "Blood Pressure",
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
                        TextField(
                          controller: tempss,
                        ),
                        TextFieldWidget_M(
                          onChanged: () {},
                          Num_Lines: 1,
                          error: false,
                          catkey: 'BLOOD',
                          index: 1,
                          Num: false,
                          hintText: 'Right Upper Limb',
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
                          catkey: 'BLOOD',
                          index: 2,
                          Num: false,
                          hintText: 'Right Lower Limb',
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
                          catkey: 'BLOOD',
                          index: 3,
                          Num: false,
                          hintText: 'Left Upper Limb',
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
                          catkey: 'BLOOD',
                          index: 4,
                          Num: false,
                          hintText: 'Left Lower Limb',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFieldWidget_M(
                          onChanged: () {},
                          Num_Lines: 1,
                          error: false,
                          catkey: 'BLOOD',
                          index: 5,
                          Num: false,
                          hintText: 'Pulse Rate (bts\\mint)',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        //carotid femoral pulse
                        TextFieldWidget_M(
                          onChanged: () {},
                          Num_Lines: 1,
                          error: false,
                          catkey: 'BLOOD',
                          index: 6,
                          Num: false,
                          hintText: 'Carotid Femoral Pulse',
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
                          catkey: 'BLOOD',
                          index: 7,
                          Num: false,
                          hintText: 'Temperature (F)',
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
                          index: 8,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'SpO2 (%)',
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
                          index: 9,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Supine',
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
                          index: 10,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Standing',
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
                          index: 11,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Sitting',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Investigation",
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
                                "ECG",
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
                          height: 20.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Image Upload",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4A64FE)),
                          ),
                        ),
                        fileupload
                            ? const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Success",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4A64FE)),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                        child: Text("Camera"),
                                        onPressed: () {
                                          getImagefromGallery(0);
                                        }),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                        child: Text("Gallery"),
                                        onPressed: () {
                                          getImagefromGallery(1);
                                        }),
                                  ),
                                ],
                              ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFieldWidget_M(
                          onChanged: () {},
                          Num_Lines: 1,
                          error: false,
                          catkey: 'BLOOD',
                          index: 13,
                          Num: false,
                          hintText: 'Ventricular Rate (b/min)',
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
                          index: 14,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Rhythm',
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
                          catkey: 'BLOOD',
                          index: 15,
                          Num: false,
                          hintText: 'Chamber',
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
                          index: 16,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'ST Changes',
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
                          index: 17,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Comments',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Echo",
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
                          index: 18,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'LV',
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
                          index: 19,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'EF',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CheckboxListTile(
                          title: const Text("CLOT/EFFUSION"),
                          value: clot,
                          onChanged: (newValue) {
                            setState(() {
                              if (clot) {
                                clot = false;
                              } else {
                                clot = true;
                              }
                              Doctor.ClinicalExamination[20] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          title: const Text("PAH"),
                          value: pah,
                          onChanged: (newValue) {
                            setState(() {
                              if (pah) {
                                pah = false;
                              } else {
                                pah = true;
                              }
                              Doctor.ClinicalExamination[21] =
                                  newValue.toString();
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
                          index: 22,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Others',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "X - ray",
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
                          index: 23,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Heart',
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
                          index: 24,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Lungs',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Coronary Angiography",
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
                        CheckboxListTile(
                          title: const Text("Single Vessel Disease"),
                          value: singlevesseldisease,
                          onChanged: (newValue) {
                            setState(() {
                              if (singlevesseldisease) {
                                singlevesseldisease = false;
                              } else {
                                singlevesseldisease = true;
                              }

                              Doctor.ClinicalExamination[25] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          title: const Text("Double Vessel Disease"),
                          value: RegularlyIrregular,
                          onChanged: (newValue) {
                            setState(() {
                              if (RegularlyIrregular) {
                                RegularlyIrregular = false;
                              } else {
                                RegularlyIrregular = true;
                              }
                              Doctor.ClinicalExamination[26] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          title: const Text("Triple Vessel Disease"),
                          value: triplevesseldisease,
                          onChanged: (newValue) {
                            setState(() {
                              if (triplevesseldisease) {
                                triplevesseldisease = false;
                              } else {
                                triplevesseldisease = true;
                              }
                              Doctor.ClinicalExamination[27] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          title: const Text("Branch Vessel Disease"),
                          value: branchvesseldisease,
                          onChanged: (newValue) {
                            setState(() {
                              if (branchvesseldisease) {
                                branchvesseldisease = false;
                              } else {
                                branchvesseldisease = true;
                              }
                              Doctor.ClinicalExamination[28] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          title: const Text("Re-canalized CAD"),
                          value: recanalizedcad,
                          onChanged: (newValue) {
                            setState(() {
                              if (recanalizedcad) {
                                recanalizedcad = false;
                              } else {
                                recanalizedcad = true;
                              }
                              Doctor.ClinicalExamination[29] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          title: const Text("Minor CAD"),
                          value: minorcad,
                          onChanged: (newValue) {
                            setState(() {
                              if (minorcad) {
                                minorcad = false;
                              } else {
                                minorcad = true;
                              }
                              Doctor.ClinicalExamination[30] =
                                  newValue.toString();
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: Wrap(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Planned For",
                                      style: GoogleFonts.lato(
                                        color: Color(0xff4A64FE),
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
                              CheckboxListTile(
                                title: Text("Medical Management"),
                                value: medicalmanagement,
                                onChanged: (newValue) {
                                  setState(() {
                                    if (medicalmanagement) {
                                      medicalmanagement = false;
                                    } else {
                                      medicalmanagement = true;
                                    }
                                    Doctor.ClinicalExamination[31] =
                                        newValue.toString();
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                              CheckboxListTile(
                                title: Text("PTCA"),
                                value: PTCA,
                                onChanged: (newValue) {
                                  setState(() {
                                    if (PTCA) {
                                      PTCA = false;
                                    } else {
                                      PTCA = true;
                                    }
                                    Doctor.ClinicalExamination[32] =
                                        newValue.toString();
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                              CheckboxListTile(
                                title: Text("CABG"),
                                value: CABG,
                                onChanged: (newValue) {
                                  setState(() {
                                    if (CABG) {
                                      CABG = false;
                                    } else {
                                      CABG = true;
                                    }
                                    Doctor.ClinicalExamination[33] =
                                        newValue.toString();
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
                        TextFieldWidget_M(
                          onChanged: () {},
                          Num_Lines: 1,
                          error: false,
                          index: 34,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Others ( Plan )',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Angina & Grade:",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DropdownButtonFormField(
                          isExpanded: true,
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
                            labelText: "Functional Classification",
                            prefixIcon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                              color: Color(0xff4A64FE),
                            ),
                          ),
                          value: DescriptionofAngina[0],
                          items: DescriptionofAngina.map((gen) {
                            return DropdownMenuItem(
                              value: gen,
                              child: Text(gen, overflow: TextOverflow.ellipsis),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              if (DescriptionofAngina[0].toString() ==
                                  val.toString()) {
                                CurrentClassDescriptionAngina = "Class - I";
                              }
                              if (DescriptionofAngina[1].toString() ==
                                  val.toString()) {
                                CurrentClassDescriptionAngina = "Class - II";
                              }
                              if (DescriptionofAngina[2].toString() ==
                                  val.toString()) {
                                CurrentClassDescriptionAngina = "Class - III";
                              }
                              if (DescriptionofAngina[3].toString() ==
                                  val.toString()) {
                                CurrentClassDescriptionAngina = "Class - IV";
                              }
                              Doctor.ClinicalExamination[35] =
                                  CurrentClassDescriptionAngina;
                            });
                          },
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                CurrentClassDescriptionAngina.toString(),
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Dyspnea & Grade",
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DropdownButtonFormField(
                          isExpanded: true,
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
                            labelText: "NYHA",
                            prefixIcon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                              color: Color(0xff4A64FE),
                            ),
                          ),
                          value: PatientSymptoms[0],
                          items: PatientSymptoms.map((gen) {
                            return DropdownMenuItem(
                              value: gen,
                              child: Text(
                                gen,
                                overflow: TextOverflow.ellipsis,
                              ),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              if (PatientSymptoms[0].toString() ==
                                  val.toString()) {
                                CurrentClassPatientSymptoms = "Class - I";
                              }
                              if (PatientSymptoms[1].toString() ==
                                  val.toString()) {
                                CurrentClassPatientSymptoms = "Class - II";
                              }
                              if (PatientSymptoms[2].toString() ==
                                  val.toString()) {
                                CurrentClassPatientSymptoms = "Class - III";
                              }
                              if (PatientSymptoms[3].toString() ==
                                  val.toString()) {
                                CurrentClassPatientSymptoms = "Class - IV";
                              }
                              Doctor.ClinicalExamination[36] =
                                  CurrentClassPatientSymptoms;
                            });
                          },
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                CurrentClassPatientSymptoms.toString(),
                                style: GoogleFonts.lato(
                                  color: const Color(0xff4A64FE),
                                  fontSize: 18,
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
                          index: 37,
                          catkey: 'BLOOD',
                          Num: false,
                          hintText: 'Others',
                          obscureText: false,
                          prefixIconData: Icons.arrow_right,
                          suffixIconData: Icons.verified_user,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Doctor.ClinicalExamination[0] =
                                CurrentPatientInfo.PatientID;
                            Map map = Doctor.ClinicalExamination.asMap();
                            // USED FOR GENERATING KEY VALUE PAIR MAP OBJECT
                            final Map<String, String> blocksMapOfIntToString = {
                              for (var item in map.entries)
                                '${"DOC" + item.key.toString()}': item.value,
                            };
                            ///////////// -------------- ////////////////

                            ////DEFAULT NO CHANGE///// DEVELOPMENT CODE///////////////////
                            List<String> templist1 =
                                blocksMapOfIntToString.keys.toList();
                            List<String> templist = [];
                            blocksMapOfIntToString.forEach((k, v) => templist
                                .add(k.toString() + ":" + k.toString()));
                            print(templist1);
                            print(templist);
                            ///////// ---------------- /////////////////

                            Doctor_Upload upload = new Doctor_Upload();
                            upload.UploadPatientClinicalInfo(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
