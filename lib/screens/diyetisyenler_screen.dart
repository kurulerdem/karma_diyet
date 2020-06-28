import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';

class DiyetisyenlerScreen extends StatefulWidget {
  static String id = 'diyetisyenler_screen';
  @override
  _DiyetisyenlerScreenState createState() => _DiyetisyenlerScreenState();
}

class _DiyetisyenlerScreenState extends State<DiyetisyenlerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.grey[200],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),
              onPressed: (){
                  Navigator.pop(context);
              },),
              Text('DİYET UZMANLARI',style: baslik,),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
           child: Column(
             children: <Widget>[
               UzmanlarCard(),
             ],
           ),
          ),
        ),
      ),
    );
  }
}

Widget UzmanlarCard() {
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
                            Text('Diyetisyen Adı'),
                          ],
                        ),


                      ],
                    )
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
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
                            Text('Diyetisyen Adı'),
                          ],
                        ),


                      ],
                    )
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
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
