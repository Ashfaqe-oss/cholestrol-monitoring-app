import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Doctor/Data_View_Update/Doctor_View.dart';

import '../../widget/button_widget.dart';

class DropDownWidget extends StatefulWidget {
  final String heading;
  final int index;
  final String Colval;
  final String tag;

  DropDownWidget(this.heading, this.index, this.Colval, this.tag);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String UpdatedVal = "";
  List<String> Col1 = ["Yes", "No", "Not Applicable"];
  List<String> Col2 = [
    "<1 Year",
    "1 to 5 Years",
    "5 to 10 Years",
    "> 10 Years",
    "Not Applicable"
  ];
  List<String> Col3 = [
    "On Medications",
    "Not On Medications",
    "Irregular Treatment",
    "Not Applicable"
  ];
  List<String> AdversePregnancy = [
    "None",
    "SHT",
    "DM",
    "Pre Eclampsia",
    "Abrupt to Placenta",
    "Abortion",
    "Post Partum Haemorrhage(PPH)",
    "Preterm delivery",
    "Low Birth Weight(LBW)",
    "Small for gestational age(SGA)",
    "Large for Gestational age(LGA)",
    "Intra Urine Growth Retardation(IUGR)",
    "Hypothyroidism",
    "Infertility",
    "Hormone Replacement Therapy(HRT)"
  ];
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
  List<String> Cough = ["Effective", "Weak", "Insufficient"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        widget.heading,
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
              widget.tag == "DROP1"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Col1[0],
                      items: Col1.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP2"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                        labelText: "Duration",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Col2[0],
                      items: Col2.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              const SizedBox(
                height: 10,
              ),
              widget.tag == "DROP3"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: Col3[0],
                      items: Col3.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP4"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                        labelText: "Select",
                        prefixIcon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                      value: AdversePregnancy[0],
                      items: AdversePregnancy.map((gen) {
                        return DropdownMenuItem(
                          value: gen,
                          child: Text(gen, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
                      onChanged: (val) {
                        UpdatedVal = val.toString();
                      },
                    )
                  : Container(),
              widget.tag == "DROP5"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                            UpdatedVal = "Class - I";
                          }
                          if (DescriptionofAngina[1].toString() ==
                              val.toString()) {
                            UpdatedVal = "Class - II";
                          }
                          if (DescriptionofAngina[2].toString() ==
                              val.toString()) {
                            UpdatedVal = "Class - III";
                          }
                          if (DescriptionofAngina[3].toString() ==
                              val.toString()) {
                            UpdatedVal = "Class - IV";
                          }
                        });
                      },
                    )
                  : Container(),
              widget.tag == "DROP6"
                  ? DropdownButtonFormField(
                      isExpanded: true,
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
                          if (PatientSymptoms[0].toString() == val.toString()) {
                            UpdatedVal = "Class - I";
                          }
                          if (PatientSymptoms[1].toString() == val.toString()) {
                            UpdatedVal = "Class - II";
                          }
                          if (PatientSymptoms[2].toString() == val.toString()) {
                            UpdatedVal = "Class - III";
                          }
                          if (PatientSymptoms[3].toString() == val.toString()) {
                            UpdatedVal = "Class - IV";
                          }
                        });
                      },
                    )
                  : Container(),
              widget.tag == "DROP7"
                  ? DropdownButtonFormField(
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
                        UpdatedVal = val.toString();
                        setState(() {});
                      },
                    )
                  : Container(),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Doctor_View Update = Doctor_View();
                  if (widget.tag == "DROP1" ||
                      widget.tag == "DROP2" ||
                      widget.tag == "DROP3") {
                    Update.UpdateRiskFactors(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP4") {
                    Update.UpdateWomenSpecific(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  if (widget.tag == "DROP5" || widget.tag == "DROP6") {
                    Update.UpdateClinicInfo(
                        widget.index.toString(), widget.Colval, UpdatedVal);
                  }
                  Navigator.pop(context);
                },
                child: ButtonWidget(
                  title: 'Update',
                  hasBorder: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
