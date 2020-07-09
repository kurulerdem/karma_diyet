import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/models/diyetisyen.dart';


class DytProfileScreen extends StatefulWidget {
  static String id = 'dyt_profile';
  @override
  _DytProfileScreenState createState() => _DytProfileScreenState();
}

class _DytProfileScreenState extends State<DytProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diyetisyen',style: baslik,),
      ),
      body: Container(
        margin: EdgeInsets.only(top:30),
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 70,
                  /// TODO: Burada Diyetisyenin Profil fotosunu döndürmemiz gerekiyor.
                  ///
                  /// Bunun için arastırma yapmam lazım.
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Aslı Olgun'),
                ],
          ),
              Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 300,
                    color:  Colors.redAccent,
                  ),
                ],
              ),
              Container(
                ///Comments going to come here.
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Program Başlat'),
                    onPressed: (){
                      ///TODO: Program oluştur fonk.
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  RaisedButton(
                    child: Text('Diyetisyen Tavsiyeleri'),
                    onPressed: (){
                      ///TODO: Tavsiyeler sayfası yazılacak
                    },
                  ),
                ],
              ),
        ],
      ),

        ),
      ),
    );
  }
}



