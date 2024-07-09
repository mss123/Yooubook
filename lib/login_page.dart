import 'package:flutter/material.dart';
import 'home_page.dart';
import 'loginScreen.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 1, 2, 82),
          Color(0xff2A1639),
        ])),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Text(
                  'YooubooK',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontFamily: 'OleoScript'),
                )),
            SizedBox(
              height: 100,
            ),
            Text(
              'Seja Bem vindo',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: 'OleoScript'),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }),
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    'Logar',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OleoScript',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'OleoScript',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
