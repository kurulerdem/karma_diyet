import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/models/diyetisyen.dart';


Widget DiyetisyenCard(Diyetisyen diyetisyen) {
  return Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(0, 0, 40, 20),
        height: 170,
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
                  child: CircleAvatar(
                    minRadius: 23.0,
                    backgroundImage: diyetisyen.avatar,
                  ),
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(diyetisyen.name,style: diyetisyen_name,),

                  ],
                ),

              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: getRatings(diyetisyen),
                    ),



                  ],
                )
            ),
            Row(
              children: <Widget>[
                Text('Yorumlar(700)',style: paragrafkucuk,),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

List<Diyetisyen> getDiyetisyenler() {
  List<Diyetisyen> diyetisyenler=[];
  for(int i=0; i<10;i++) {
    AssetImage picture = new AssetImage('assets/avatar.jpg');
    Diyetisyen myDiyetisyen = new Diyetisyen('Dyt. Aslı Olgun', 500, 4, 423.4, picture);
    diyetisyenler.add(myDiyetisyen);
  }
  return diyetisyenler;
}

List<Widget> getDiyetisyenToUI() {
  List<Diyetisyen> diyetisyenler = getDiyetisyenler();
  List<Widget> cards = [];
  for(Diyetisyen diyetisyen in diyetisyenler) {

    cards.add(DiyetisyenCard(diyetisyen));

  }
  return cards;
}

List<Widget> getRatings(Diyetisyen diyetisyenler) {
  List<Widget> ratings=[];
  for (int i=0;i<5;i++) {
    if(i< diyetisyenler.rating) {
      ratings.add(
        new Icon(Icons.star,
          color: Colors.yellow,),
      );
    } else {
      ratings.add(Icon(Icons.star,
        color: Colors.black,));
    }
  }
  return ratings;
}