import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psg_hospital_app/CurrentPatientInfo.dart';
import 'package:psg_hospital_app/widget/button_widget.dart';

import 'Counsellor/Consellor_Login.dart';
import 'Dietitian/Con_Dietition_Login.dart';
import 'Doctor/Doctor_Login.dart';
import 'Physiotherapist/Physiotherapist_Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Entry(),
    );
  }
}

class Entry extends StatelessWidget {
  TextEditingController ipaddress = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: ipaddress,
                onChanged: (value) {},
                cursorColor: const Color(0xff4A64FE),
                style: GoogleFonts.lato(
                  color: const Color(0xff4A64FE),
                  fontSize: 16.0,
                ),
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
                        const BorderSide(color: const Color(0xff4A64FE)),
                  ),
                  labelText: "IP",
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    size: 18,
                    color: Color(0xff4A64FE),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  CurrentPatientInfo.IP = ipaddress.text.trim();
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => Home()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: ButtonWidget(
                    title: 'Set',
                    hasBorder: false,
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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xFF3366FF),
                        Color(0xFF00CCFF),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.table_chart_outlined,
                  size: 25,
                  color: Color(0xFF3366FF),
                ),
                subtitle: const Text("Officials only"),
                title: const Text('Administrator Login'),
                onTap: () {
                  /*
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Admin_Login()));

                   */
                },
              ),
            ],
          ),
        ),
        //backgroundColor: Color(0xffffffff),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFF3366FF),
                      Color(0xFF00CCFF),
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
            Positioned(
                top: 15,
                left: 15,
                child: GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "PSG Hospitals",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "DEPARTMENT OF CARDIOLOGY",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "DEPARTMENT OF PHYSICAL MEDICINE & REHABILITATION",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Doctor_Login()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "Doctor",
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 15.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage("Assets/Doctor.jpg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        //Color(0xff4A64FE)
                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              "Doctor's Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Physiotherapist_Login()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "Patient",
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 15.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage("Assets/Patient_Home.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        //Color(0xff4A64FE)
                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              "Physiotherapist's Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Dietitian_Login()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "dietitian",
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 15.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage("Assets/Dietitian.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        //Color(0xff4A64FE)
                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              "Dietitian's Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Consellor_Login()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: "Counsellor",
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 15.0,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage("Assets/Counsellor.jpg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        //Color(0xff4A64FE)
                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Text(
                              "Counsellor's Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
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
