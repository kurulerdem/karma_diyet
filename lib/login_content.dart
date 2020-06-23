import 'package:flutter/material.dart';
class LoginContent extends StatelessWidget {
  LoginContent({@required this.helptxt,this.passswd});
  final String helptxt;
  final bool passswd;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
      height: 40,
      width: double.infinity,
      child: TextField(
        obscureText: passswd,
        onChanged: (value){
        },
        decoration: new InputDecoration(
            filled: true,
            hintText: helptxt,
            border: new OutlineInputBorder(
              borderRadius:  BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Colors.white),
            )
        ),
      ),

    );
  }
}
