import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trip_planner/login.dart';
import 'package:trip_planner/signup.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                 const Text(
                    "Seyahat Rotam",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kolayca Seyahatinizi Planlayın ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                // Arka plan resmi için DecorationImage kullanılıyor
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // AssetImage ile resmin yolunu belirtildi
                    image: AssetImage('assets\background.png'),
                    // Arka plan resmini doldurma
                    fit: BoxFit.cover,
                  ),
                ),
                height: MediaQuery.of(context).size.height / 3, // Yükseklik
              ),
              Column(
                children: <Widget>[
                  // Giriş Yap Butonu
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color: Color.fromARGB(255, 228, 224, 224),
                    // Butonun şekli
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color.fromARGB(255, 228, 224, 224)),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Giriş Yap",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                  // Kayıt Ol butonu
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    color: Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Kayıt Ol",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
