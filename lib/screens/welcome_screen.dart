import 'package:flutter/material.dart';
import 'package:karmadiyet/components/constants.dart';
import 'package:karmadiyet/screens/home_screen.dart';
import 'register_screen.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/login_content.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: true,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: null, /// LOGO GELECEK
            ),
            body: Container(
              decoration: arkaplan,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: loginbox,
                  width: 250,
                  height: 300,
                  child: Column(
                    children: <Widget>[
                      LoginContent(helptxt:'email adresi girin',passswd: false,),
                      LoginContent(helptxt:'şifrenizi girin',passswd: true,),
                      ButtonContent(txt: 'Giriş',onPress: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },),
                      ButtonContent(txt: 'Üye Ol',onPress: (){
                        Navigator.pushNamed(context, RegisterScreen.id);
                      },)
                      ,Container(
                        child: FlatButton(onPressed: (){

                          ///TODO: RESET PASSWORD yazılacak.

                        },child: Text('Şifreni mi unuttun ?')),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ),
      );

  }
}

class ButtonContent extends StatelessWidget {
  ButtonContent({@required this.txt,this.onPress});
  final String txt;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60)
      ),
      width: 170,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0)
        ),
        onPressed: onPress,
        child: Text(txt,style: buton,),

      ),
    );
  }
}





