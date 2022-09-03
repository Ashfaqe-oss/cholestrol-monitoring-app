import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Counsellor/Data_Upload/Values.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/button_widget.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Counsellor_Upload.dart';

class Habit extends StatefulWidget {
  const Habit({Key? key}) : super(key: key);
  @override
  _HabitState createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  final List<String> YesNo = ["Yes", "No"];

  @override
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
              "Habits",
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
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 1,
                                Num: false,
                                hintText: 'Sleep duration at night (in hours)',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 2,
                                Num: false,
                                hintText: 'Last Activity Before Bed Time',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Day Time Sleepiness",
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
                              value: YesNo[0],
                              items: YesNo.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.Habit[3] = val.toString();
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
                                      "Do you take medication to sleep?",
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
                              value: YesNo[0],
                              items: YesNo.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.Habit[4] = val.toString();

                                setState(() {});
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
                                      "Screen Time (Total Hrs/Day)",
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
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 5,
                                Num: false,
                                hintText: 'Mobile',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 6,
                                Num: false,
                                hintText: 'TV',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 7,
                                Num: false,
                                hintText: 'Laptop',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
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
                                      "When Last Used?",
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
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 8,
                                Num: false,
                                hintText: 'Mobile',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 9,
                                Num: false,
                                hintText: 'TV',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 10,
                                Num: false,
                                hintText: 'Laptop',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 11,
                                Num: false,
                                hintText: 'Bowel Habits Frequency',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 12,
                                Num: false,
                                hintText: "Bowel Habit's Description",
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
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
                                      "Difficulty",
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
                              value: YesNo[0],
                              items: YesNo.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.Habit[13] = val.toString();
                                setState(() {});
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
                                      "Eating Habits - Approx time taken to eat",
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
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 14,
                                Num: false,
                                hintText: 'Breakfast',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 15,
                                Num: false,
                                hintText: 'Lunch',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFieldWidget_M(
                                onChanged: () {},
                                Num_Lines: 1,
                                error: false,
                                index: 16,
                                Num: false,
                                hintText: 'Dinner',
                                obscureText: false,
                                prefixIconData: Icons.arrow_right,
                                suffixIconData: Icons.verified_user,
                                catkey: 'COUNSELLOR1',
                              ),
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
                                      "Do you watch TV/Mobile while eating?",
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
                              value: YesNo[0],
                              items: YesNo.map((gen) {
                                return DropdownMenuItem(
                                  value: gen,
                                  child: Text(gen),
                                );
                              }).toList(),
                              onChanged: (val) {
                                Counsellor.Habit[17] = val.toString();
                                setState(() {});
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
                        GestureDetector(
                          onTap: () {
                            ///////////// COPYCODE ////////////////
                            Counsellor.Habit[0] = CurrentPatientInfo.PatientID;
                            Map map = Counsellor.Habit.asMap();
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
                            upload.UploadHabits(blocksMapOfIntToString)
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
