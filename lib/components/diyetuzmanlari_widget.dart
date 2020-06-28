import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/models/diyetisyen.dart';
import 'package:karmadiyet/components/diyetisyen_widget.dart';

Widget UzmanlarCard(Diyetisyen diyetisyen) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
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
                        backgroundImage: diyetisyen.avatar,
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
                            Text(diyetisyen.name),
                          ],
                        ),


                      ],
                    )
                ),
                Row(
                  children: getRatings(diyetisyen),
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
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        onPressed: () {

                        },
                        child: Text('Profili Görüntüle',style: ProfilGoruntu,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
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
                        backgroundImage: diyetisyen.avatar,
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
                            Text(diyetisyen.name),
                          ],
                        ),


                      ],
                    )
                ),
                Row(
                  children: getRatings(diyetisyen),
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
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        onPressed: () {

                        },
                        child: Text('Profili Görüntüle',style: ProfilGoruntu,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

List<Widget> getDiyetisyenlerToUI() {
  List<Diyetisyen> diyetisyenler = getDiyetisyenler();
  List<Widget> cards = [];
  for(Diyetisyen diyetisyen in diyetisyenler) {

    cards.add(UzmanlarCard(diyetisyen));

  }
  return cards;
}