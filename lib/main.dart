import 'package:flutter/material.dart';
import 'package:loginservice1/constants.dart';
import 'package:loginservice1/user.dart';

import 'buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug yazısını kaldırır
      home: SafeArea(
        child: Scaffold(
          body: MyLogin(),
        ),
      ),
    );
  }
}

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            //gradient bir renk vermek istersek.
            begin: Alignment.topCenter,
            colors: [Colors.deepOrange, Colors.orange, Colors.yellow]),
      ),
      child: My_AppBar(),
    );
  }
}

class My_AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, // Column 'a yatayda nasıl konumlanacagını  belırtmıs olduk.
      children: [
        Container(
          color: Colors.white,
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome back",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Chassis()
      ],
    );
  }
}

class Chassis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ////////////////////////////   USER BODY  //////////////
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 95, 27, 0.3),
                        blurRadius: 20,
                        offset: Offset(0, 5), // gölgenin büyüklügünü ayarlar
                      ),
                    ]),
                child: Column(
                  children: [
                    UserInformation(
                      text: "Email or Phone number",
                    ),
                    UserInformation(
                      text: "Password",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ////////////////////////////   FORGOT PASSWORD  //////////////
              My_Text(
                inputText: "Forgot Password?",
                myFontSize: 15,
                myColor: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              ////////////////////////////   LOGİN BUTTON  //////////////
              Buttons(
                buttonColor: Colors.deepOrange,
                buttonSizeHorizontal: 20,
                buttonSizeVertical: 10,
                buttonText: "Login",
                buttonTextColor: Colors.white,
                buttonTextFontSize: 20,
              ),
              ////////////////////////////   SOCİAL MEDİA  //////////////
              SizedBox(
                height: 20,
              ),
              My_Text(
                  inputText: "Continue with social media",
                  myFontSize: 15,
                  myColor: Colors.grey),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Buttons(
                        buttonSizeHorizontal: 20,
                        buttonSizeVertical: 10,
                        buttonColor: Colors.yellow,
                        buttonTextFontSize: 20,
                        buttonTextColor: Colors.white,
                        buttonText: "Facebook",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Buttons(
                        buttonSizeHorizontal: 33,
                        buttonSizeVertical: 10,
                        buttonColor: Colors.yellow,
                        buttonTextFontSize: 20,
                        buttonTextColor: Colors.white,
                        buttonText: "Google",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
