import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:psg_hospital_app/Counsellor/Data_Upload/Values.dart';
import 'package:psg_hospital_app/Dietitian/Data_Upload/Values.dart';
import 'package:psg_hospital_app/Physiotherapist/Physiotherapist_Upload/Physio_Values.dart';

import '../Doctor/Data_Upload/Values.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;
  final bool Num;
  final int index;
  final bool error;

  TextFieldWidget(
      {required this.hintText,
      required this.prefixIconData,
      required this.suffixIconData,
      required this.obscureText,
      required this.onChanged,
      required this.Num,
      required this.index,
      required this.error});
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      obscureText: widget.obscureText,
      cursorColor: Color(0xff4A64FE),
      style: GoogleFonts.lato(
        color: Color(0xff4A64FE),
        fontSize: 16.0,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Color(0xff4A64FE)),
        focusColor: Color(0xff4A64FE),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff4A64FE)),
        ),
        labelText: widget.hintText,
        prefixIcon: Icon(
          widget.prefixIconData == Icons.verified_user
              ? null
              : widget.prefixIconData,
          size: 18,
          color: Color(0xff4A64FE),
        ),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Icon(
            widget.suffixIconData == Icons.verified_user
                ? null
                : widget.suffixIconData,
            size: 18,
            color: Color(0xff4A64FE),
          ),
        ),
      ),
      keyboardType: widget.Num ? TextInputType.number : TextInputType.text,
      inputFormatters: widget.Num
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : null,
    );
  }
}

class TextFieldWidget_M extends StatefulWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final bool Num;
  final int index;
  final bool error;
  final int Num_Lines;
  final Function onChanged;
  final String catkey;

  TextFieldWidget_M(
      {required this.hintText,
      required this.prefixIconData,
      required this.suffixIconData,
      required this.obscureText,
      required this.Num,
      required this.index,
      required this.error,
      required this.Num_Lines,
      required this.onChanged,
      required this.catkey});

  @override
  _TextFieldWidget_MState createState() => _TextFieldWidget_MState();
}

class _TextFieldWidget_MState extends State<TextFieldWidget_M> {
  bool errorindicator = false;
  TextEditingController txt = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        // DOCTOR
        if (widget.catkey == "DEMOGRAPH") {
          Doctor.DemographicData[widget.index] = value;
          print(Doctor.DemographicData);
        }
        if (widget.catkey == "WOMEN_INFO") {
          Doctor.WomenSpecificInformation[widget.index] = value;
          print(Doctor.WomenSpecificInformation);
        }
        if (widget.catkey == "BLOOD") {
          Doctor.ClinicalExamination[widget.index] = value;
          print(Doctor.ClinicalExamination);
        }
        if (widget.catkey == "RESP") {
          Doctor.Resp_Phy[widget.index] = value;
          print(Doctor.Resp_Phy);
        }
        if (widget.catkey == "INV") {
          Doctor.Inv[widget.index][0] = value;
          print(Doctor.Inv);
        }
        if (widget.catkey == "INVOUTSIDE") {
          Doctor.Inv[widget.index][1] = value;
          print(Doctor.Inv);
        }
        if (widget.catkey == "INVHOSPITAL") {
          Doctor.Inv[widget.index][2] = value;
          print(Doctor.Inv);
        }
        if (widget.catkey == "INVRESULT") {
          Doctor.Inv[widget.index][3] = value;
          print(Doctor.Inv);
        }

        /**********************************/

        // COUNSELLOR
        if (widget.catkey == "COUNSELLOR") {
          Counsellor.PatientScore[widget.index] = value;
          print(Counsellor.PatientScore);
        }
        if (widget.catkey == "COUNSELLOR1") {
          Counsellor.Habit[widget.index] = value;
          print(Counsellor.Habit);
        }
        if (widget.catkey == "COUNSELLOR2") {
          Counsellor.TimeActivities[widget.index] = value;
          print(Counsellor.TimeActivities);
        }
        if (widget.catkey == "COUNSELLOR3") {
          Counsellor.EconomicStatus[widget.index] = value;
          print(Counsellor.EconomicStatus);
        }

        /***************************************/

        //DIETITIAN
        if (widget.catkey == "SECTION1") {
          Dietitian.Section1[widget.index] = value;
          print(Dietitian.Section1);
        }
        if (widget.catkey == "DIET") {
          Dietitian.DietPattern[widget.index] = value;
          print(Dietitian.DietPattern);
        }
        if (widget.catkey == "FOODQUANTITY") {
          Dietitian.FoodQuantity[widget.index] = value;
          print(Dietitian.FoodQuantity);
        }
        if (widget.catkey == "LIKE") {
          Dietitian.FoodPreference[widget.index][0] = value;
          print(Dietitian.FoodPreference);
        }
        if (widget.catkey == "DLIKE") {
          Dietitian.FoodPreference[widget.index][1] = value;
          print(Dietitian.FoodPreference);
        }

        /*****************************************/
        //PHYSIOTHERAPIST
        if (widget.catkey == "ASSESSMENT") {
          Physiotherapist.Assessment[widget.index] = value;
          print(Physiotherapist.Assessment);
        }
        if (widget.catkey == "GOALS") {
          Physiotherapist.Goals[widget.index] = value;
          print(Physiotherapist.Goals);
        }
        if (widget.catkey == "DAY1") {
          Physiotherapist.Day1[widget.index][0] = value;
          print(Physiotherapist.Day1);
        }
        if (widget.catkey == "DAY1DESC") {
          Physiotherapist.Day1[widget.index][1] = value;
          print(Physiotherapist.Day1);
        }
        if (widget.catkey == "DAY2") {
          Physiotherapist.Day2[widget.index][0] = value;
          print(Physiotherapist.Day2);
        }
        if (widget.catkey == "DAY2DESC") {
          Physiotherapist.Day2[widget.index][1] = value;
          print(Physiotherapist.Day2);
        }
        if (widget.catkey == "DAY3") {
          Physiotherapist.Day3[widget.index][0] = value;
          print(Physiotherapist.Day3);
        }
        if (widget.catkey == "DAY3DESC") {
          Physiotherapist.Day3[widget.index][1] = value;
          print(Physiotherapist.Day3);
        }
        if (widget.catkey == "DAY4") {
          Physiotherapist.Day4[widget.index][0] = value;
          print(Physiotherapist.Day4);
        }
        if (widget.catkey == "DAY4DESC") {
          Physiotherapist.Day4[widget.index][1] = value;
          print(Physiotherapist.Day4);
        }
        if (widget.catkey == "DAY5") {
          Physiotherapist.Day5[widget.index][0] = value;
          print(Physiotherapist.Day5);
        }
        if (widget.catkey == "DAY5DESC") {
          Physiotherapist.Day5[widget.index][1] = value;
          print(Physiotherapist.Day5);
        }
        if (widget.catkey == "SIXDESC") {
          Physiotherapist.SixMinuteWalkTest[widget.index][1] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP1") {
          Physiotherapist.SixMinuteWalkTest[5][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP2") {
          Physiotherapist.SixMinuteWalkTest[6][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP3") {
          Physiotherapist.SixMinuteWalkTest[7][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP4") {
          Physiotherapist.SixMinuteWalkTest[8][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP5") {
          Physiotherapist.SixMinuteWalkTest[9][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP6") {
          Physiotherapist.SixMinuteWalkTest[10][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP7") {
          Physiotherapist.SixMinuteWalkTest[11][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP8") {
          Physiotherapist.SixMinuteWalkTest[12][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP9") {
          Physiotherapist.SixMinuteWalkTest[13][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "LAP10") {
          Physiotherapist.SixMinuteWalkTest[14][widget.index] = value;
          print(Physiotherapist.SixMinuteWalkTest);
        }
        if (widget.catkey == "DISCH") {
          Physiotherapist.DischargeCheckList[widget.index] = value;
          print(Physiotherapist.DischargeCheckList);
        }
      },
      controller: txt,
      maxLines: widget.Num_Lines,
      obscureText: widget.obscureText,
      cursorColor: Color(0xff4A64FE),
      style: GoogleFonts.lato(
        color: Color(0xff4A64FE),
        fontSize: 16.0,
      ),
      keyboardType: widget.Num ? TextInputType.number : TextInputType.text,
      inputFormatters: widget.Num
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Color(0xff4A64FE)),
        focusColor: errorindicator ? Colors.red : Color(0xff4A64FE),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: errorindicator ? Colors.red : Color(0xff4A64FE)),
        ),
        labelText: widget.hintText,
        prefixIcon: Icon(
          widget.prefixIconData == Icons.verified_user
              ? null
              : widget.prefixIconData,
          size: 20,
          color: errorindicator ? Colors.red : Color(0xff4A64FE),
        ),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: Icon(
            widget.suffixIconData == Icons.verified_user
                ? null
                : widget.suffixIconData,
            size: 18,
            color: Color(0xff4A64FE),
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget_Date extends StatefulWidget {
  final String LabelText;
  final String catkey;
  final int index;
  TextFieldWidget_Date(
      {required this.LabelText, required this.catkey, required this.index});
  @override
  _TextFieldWidget_DateState createState() => _TextFieldWidget_DateState();
}

class _TextFieldWidget_DateState extends State<TextFieldWidget_Date> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateinput.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateinput,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Color(0xff4A64FE)),
        focusColor: Color(0xff4A64FE),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff4A64FE)),
        ),
        labelText: widget.LabelText.toString(),
        prefixIcon: const Icon(
          Icons.arrow_right,
          size: 20,
          color: Color(0xff4A64FE),
        ),
      ),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1800),
            lastDate: DateTime(2101));
        if (pickedDate != null) {
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          setState(() {
            dateinput.text = formattedDate;
            print(dateinput.text);
            if (widget.catkey == "DEMOGRAPH") {
              Doctor.DemographicData[widget.index] = dateinput.text.toString();
            }
            if (widget.catkey == "INVDATE") {
              Doctor.Inv[widget.index][0] = dateinput.text.toString();
              print(Doctor.Inv);
            }
            if (widget.catkey == "ASSESSMENT") {
              Physiotherapist.Assessment[widget.index] =
                  dateinput.text.toString();
              print(Physiotherapist.Assessment);
            }
            if (widget.catkey == "DAY1") {
              Physiotherapist.Day1[widget.index][0] = dateinput.text.toString();
              print(Physiotherapist.Day1);
            }
            if (widget.catkey == "DAY2") {
              Physiotherapist.Day2[widget.index][0] = dateinput.text.toString();
              print(Physiotherapist.Day2);
            }
            if (widget.catkey == "DAY3") {
              Physiotherapist.Day3[widget.index][0] = dateinput.text.toString();
              print(Physiotherapist.Day3);
            }
            if (widget.catkey == "DAY4") {
              Physiotherapist.Day4[widget.index][0] = dateinput.text.toString();
              print(Physiotherapist.Day4);
            }
            if (widget.catkey == "DAY5") {
              Physiotherapist.Day5[widget.index][0] = dateinput.text.toString();
              print(Physiotherapist.Day5);
            }
            if (widget.catkey == "SIX") {
              Physiotherapist.SixMinuteWalkTest[widget.index][0] =
                  dateinput.text.toString();
              print(Physiotherapist.SixMinuteWalkTest);
            }
          });
        } else {
          print("Date is not selected");
        }
      },
    );
  }
}
