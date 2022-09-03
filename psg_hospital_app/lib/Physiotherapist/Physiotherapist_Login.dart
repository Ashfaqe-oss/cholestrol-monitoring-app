import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/Physiotherapist/Physiotherapist_Upload/Physiotherapist_Upload.dart';

import '../widget/button_widget.dart';
import 'Physio_Home.dart';

class Physiotherapist_Login extends StatefulWidget {
  const Physiotherapist_Login({Key? key}) : super(key: key);
  @override
  _Physiotherapist_LoginState createState() => _Physiotherapist_LoginState();
}

class _Physiotherapist_LoginState extends State<Physiotherapist_Login> {
  bool mainPassObscure = true;
  TextEditingController uname = new TextEditingController();
  TextEditingController pwd = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: "Patient",
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
                          image: DecorationImage(
                            image: AssetImage("Assets/Patient.png"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30.0, bottom: 15.0),
                        child: Text(
                          "Physiotherapist's Login",
                          style: GoogleFonts.lato(
                            color: Color(0xff4A64FE),
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
                        controller: uname,
                        onChanged: (value) {},
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
                          labelText: "Physiotherapist ID",
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            size: 18,
                            color: Color(0xff4A64FE),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          controller: pwd,
                          onChanged: (value) {},
                          obscureText: mainPassObscure,
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
                            labelText: "Password",
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 18,
                              color: Color(0xff4A64FE),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                if (mainPassObscure) {
                                  setState(() {
                                    mainPassObscure = false;
                                  });
                                } else {
                                  setState(() {
                                    mainPassObscure = true;
                                  });
                                }
                              },
                              child: Icon(
                                mainPassObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 18,
                                color: Color(0xff4A64FE),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: GestureDetector(
                      onTap: () {
                        Physiotherapist_Upload login =
                            new Physiotherapist_Upload();
                        login.Physio_Auth({
                          "userid": uname.text.trim(),
                          "pwd": pwd.text.trim()
                        }).then((value) {
                          if (jsonDecode(value)["result"] == "SUCCESS") {
                            print(jsonDecode(value)["result"]);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Physio_HomePage()));
                          }
                        });
                      },
                      child: ButtonWidget(
                        title: 'Login',
                        hasBorder: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
