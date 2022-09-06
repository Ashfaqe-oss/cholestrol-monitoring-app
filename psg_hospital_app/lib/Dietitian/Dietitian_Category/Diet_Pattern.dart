import 'dart:convert';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Dietitian/Data_Upload/Values.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import '../../CurrentPatientInfo.dart';
import '../../widget/Label.dart';
import '../../widget/textfield_widget.dart';
import '../Data_Upload/Dietitan_Upload.dart';

class Diet_Pattern extends StatefulWidget {
  const Diet_Pattern({Key? key}) : super(key: key);

  @override
  _Diet_PatternState createState() => _Diet_PatternState();
}

class _Diet_PatternState extends State<Diet_Pattern> {
  TimeOfDay EarlyMorning = TimeOfDay.now();
  TimeOfDay BreakFast = TimeOfDay.now();
  TimeOfDay Lunch = TimeOfDay.now();
  TimeOfDay Dinner = TimeOfDay.now();
  TimeOfDay PostDinner = TimeOfDay.now();
  TimeOfDay MidMorning = TimeOfDay.now();
  TimeOfDay Evening = TimeOfDay.now();

  List<String> Food = ["Tea", "Coffee", "Milk", "Others"];
  List<String> Milk = ["With Milk", "Without Milk"];

  EarlyMorning_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: EarlyMorning,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != EarlyMorning) {
      setState(() {
        EarlyMorning = timeOfDay;
        Dietitian.DietPattern[1] = EarlyMorning.hour.toString() +
            " : " +
            EarlyMorning.minute.toString();
      });
    }
  }

  MidMorning_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: MidMorning,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != MidMorning) {
      setState(() {
        MidMorning = timeOfDay;
        Dietitian.DietPattern[16] =
            MidMorning.hour.toString() + " : " + MidMorning.minute.toString();
      });
    }
  }

  Evening_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: Evening,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != Evening) {
      setState(() {
        Evening = timeOfDay;
        Dietitian.DietPattern[26] =
            Evening.hour.toString() + " : " + Evening.minute.toString();
      });
    }
  }

  BreakFast_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: BreakFast,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != BreakFast) {
      setState(() {
        BreakFast = timeOfDay;
        Dietitian.DietPattern[9] =
            BreakFast.hour.toString() + " : " + BreakFast.minute.toString();
      });
    }
  }

  Lunch_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: Lunch,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != Lunch) {
      setState(() {
        Lunch = timeOfDay;
        Dietitian.DietPattern[19] =
            Lunch.hour.toString() + " : " + Lunch.minute.toString();
      });
    }
  }

  Dinner_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: Dinner,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != Dinner) {
      setState(() {
        Dinner = timeOfDay;
        Dietitian.DietPattern[29] =
            Dinner.hour.toString() + " : " + Dinner.minute.toString();
      });
    }
  }

  PostDinner_selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: PostDinner,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != PostDinner) {
      setState(() {
        PostDinner = timeOfDay;
        Dietitian.DietPattern[34] =
            PostDinner.hour.toString() + " : " + PostDinner.minute.toString();
      });
    }
  }

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
              "",
              style: GoogleFonts.lato(
                color: const Color(0xffffffff),
                fontSize: 25,
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
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Dietary Habits",
                                  style: GoogleFonts.lato(
                                    color: const Color(0xff4A64FE),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Early Morning"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              EarlyMorning_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[1].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
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
                              labelText: "Food",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: const Color(0xff4A64FE),
                              ),
                            ),
                            value: Food[0],
                            items: Food.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child: Text(gen),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Dietitian.DietPattern[2] = val.toString();
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 3,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        /*Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 4,
                            Num: false,
                            hintText: 'With Milk / Without Milk',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),*/
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
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
                              labelText: "Milk",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: const Color(0xff4A64FE),
                              ),
                            ),
                            value: Milk[0],
                            items: Milk.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child: Text(gen),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Dietitian.DietPattern[5] = val.toString();
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 6,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 7,
                            Num: false,
                            hintText: 'Sugar',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
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
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Breakfast"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              BreakFast_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[9].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 10,
                            Num: false,
                            hintText: 'Specify type of food ',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 11,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 12,
                            Num: false,
                            hintText: 'Side Dish',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 13,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
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
                              labelText: "Food",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: const Color(0xff4A64FE),
                              ),
                            ),
                            value: Food[0],
                            items: Food.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child: Text(gen),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Dietitian.DietPattern[14] = val.toString();
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 15,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Mid-Morning Snack"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              MidMorning_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[16].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 17,
                            Num: false,
                            hintText: 'Specify type of food',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 18,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Lunch"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Lunch_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[19].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 20,
                            Num: false,
                            hintText: 'Specify type of food',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 21,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 22,
                            Num: false,
                            hintText: 'What brand of rice / wheat do you buy?',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 23,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 24,
                            Num: false,
                            hintText: 'Side Dish',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 25,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Evening"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Evening_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[26].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 27,
                            Num: false,
                            hintText: 'Specify type of food',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 28,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Dinner"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Dinner_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[29].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 30,
                            Num: false,
                            hintText: 'Specify type of food',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 31,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 32,
                            Num: false,
                            hintText: 'Side Dish',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 33,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          color: const Color(0xff4A64FE),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Post Dinner"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              PostDinner_selectTime(context);
                            });
                          },
                          child: const Text("Choose Time"),
                        ),
                        Text(Dietitian.DietPattern[34].toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Heading("Food Item Consumed"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonFormField(
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
                              labelText: "Food",
                              prefixIcon: const Icon(
                                Icons.arrow_right,
                                size: 20,
                                color: const Color(0xff4A64FE),
                              ),
                            ),
                            value: Food[0],
                            items: Food.map((gen) {
                              return DropdownMenuItem(
                                value: gen,
                                child: Text(gen),
                              );
                            }).toList(),
                            onChanged: (val) {
                              Dietitian.DietPattern[35] = val.toString();
                              setState(() {});
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldWidget_M(
                            onChanged: () {},
                            Num_Lines: 1,
                            error: false,
                            index: 36,
                            Num: false,
                            hintText: 'Quantity / Serving',
                            obscureText: false,
                            prefixIconData: Icons.arrow_right,
                            suffixIconData: Icons.verified_user,
                            catkey: 'DIET',
                          ),
                        ),
                      ]),
                      GestureDetector(
                        onTap: () {
                          print(Dietitian.DietPattern);
                          ///////////// COPYCODE ////////////////
                          Dietitian.DietPattern[0] =
                              CurrentPatientInfo.PatientID;

                          Map map = Dietitian.DietPattern.asMap();
                          final Map<String, String> blocksMapOfIntToString = {
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

                          Dietitian_Upload upload = new Dietitian_Upload();
                          upload.UploadDietPattern(blocksMapOfIntToString)
                              .then((value) {
                            if (jsonDecode(value)["result"] == "SUCCESS") {
                              Navigator.pop(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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
                    ],
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
