import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/button_widget.dart';
import 'Doctor_CreateNewProfile.dart';
import 'Profile_Info.dart';

class Doctor_HomePage extends StatefulWidget {
  const Doctor_HomePage({Key? key}) : super(key: key);

  @override
  _Doctor_HomePageState createState() => _Doctor_HomePageState();
}

class _Doctor_HomePageState extends State<Doctor_HomePage> {
  TextEditingController pid = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: "Doctor",
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                                MediaQuery.of(context).size.width),
                            bottomRight: Radius.circular(
                                MediaQuery.of(context).size.width)),
                        image: const DecorationImage(
                          image: AssetImage("Assets/Doctor.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, bottom: 15.0),
                      child: Text(
                        "Patient Identification",
                        style: GoogleFonts.lato(
                          color: const Color(0xff4A64FE),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      controller: pid,
                      cursorColor: const Color(0xff4A64FE),
                      style: GoogleFonts.lato(
                        color: const Color(0xff4A64FE),
                        fontSize: 16.0,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Patient ID",
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
                        prefixIcon: const Icon(
                          Icons.verified_user_outlined,
                          size: 20,
                          color: Color(0xff4A64FE),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print(pid.text.trim());
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Profileview(pid.text.trim())),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: ButtonWidget(
                      title: 'Search',
                      hasBorder: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add New Patient Info",
        backgroundColor: const Color(0xff4A64FE),
        child: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateNewPatient_Info()));
        },
      ),
    );
  }
}
