import 'package:flutter/material.dart';
import 'package:karmadiyet/components/constants.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/models/diyetisyen.dart';
import 'package:karmadiyet/components/diyetisyen_widget.dart';
import 'package:karmadiyet/screens/diyetisyenprofil_screen.dart';

Widget UzmanlarCard(Diyetisyen diyetisyen) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      DytUzmanContent(dytname: diyetisyen.name,avatar: diyetisyen.avatar,dytrating: getRatings(diyetisyen),),
      DytUzmanContent(dytname: diyetisyen.name,avatar: diyetisyen.avatar,dytrating: getRatings(diyetisyen),),
    ],
  );
}

class DytUzmanContent extends StatelessWidget {
  String dytname;
  List<Widget> dytrating;
  AssetImage avatar;
  DytUzmanContent({@required this.dytname,this.dytrating,this.avatar});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(5, 5, 10, 10),
          padding: EdgeInsets.all(20),

          height: 300,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
            boxShadow: [ BoxShadow(
              color: Colors.grey[200],
              blurRadius: 20.0,
            ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.fromLTRB(19, 0, 10, 19),
                    child: CircleAvatar(
                      backgroundImage: avatar,
                      minRadius: 48.0,
                    ),
                  ),
                  SizedBox(width: 5,),

                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(dytname),
                        ],
                      ),


                    ],
                  )
              ),
              Row(
                children: dytrating,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Yorumlar(700)',style: paragrafkucuk,),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top:30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => DytProfileScreen())
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: showProfile,
                          child: Center(
                            child: Text('Profil', style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)
                            ,
                            ),
                          ),
                        )
                        ,
                        );

                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<Widget> getDiyetisyenlerToUI() {
  List<Diyetisyen> diyetisyenler = getDiyetisyenler();
  List<Widget> cards = [];
  for(Diyetisyen diyetisyen in diyetisyenler) {

    cards.add(UzmanlarCard(diyetisyen));

  }
  return cards;
}