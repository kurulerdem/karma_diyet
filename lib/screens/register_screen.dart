import 'package:flutter/material.dart';

import 'package:karmadiyet/components/constants.dart';
import 'package:karmadiyet/components/style.dart';

class RegisterScreen extends StatefulWidget {
  static String id = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return true;
      },
      child: SafeArea(
        bottom: true,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop),
              image: AssetImage('assets/girls.jpg'), fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('UYE OL', style:baslik2 ),
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(50, 50, 50, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            margin: EdgeInsets.only(top: 100),
                            width: 250,
                            height: 70,
                            child: TextField(
                              decoration: userinput,
                              style: inputs,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            margin: EdgeInsets.only(top:20),
                            width: 250,
                            height: 70,
                            child: TextField(
                              obscureText: true,
                              decoration: passwordinput,
                              style: inputs,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 40),
                            width: 250,
                            height: 70,
                            child: TextField(
                              obscureText: true,
                              decoration: repasswordinput,
                              style: inputs,
                            ),
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom:40),
                        width: 250,
                        height: 45,
                        child: RaisedButton(
                          color: Colors.green,
                          onPressed: (){},
                          child: Text('Uye Ol',style: baslik2,),

                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}