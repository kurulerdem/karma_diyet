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
                      ButtonContent(txt: 'Giriş'),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60)
                        ),
                        width: 170,
                        height: 40,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.lightBlue),
                          ),
                          onPressed: (){
                            ///TODO: Bu Kısma link verilecek !
                            Navigator.pushNamed(context, RegisterScreen.id);
                          },
                          child: Text('Üye Ol',style: buton,),

                        ),
                      ),
                      Container(
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
  ButtonContent({@required this.txt,});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60)
      ),
      width: 170,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0)
        ),
        onPressed: (){
              Navigator.pushNamed(context, HomeScreen.id);
        },
        child: Text(txt,style: buton,),

      ),
    );
  }
}





