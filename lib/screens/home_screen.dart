import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/components/constants.dart';
import 'package:karmadiyet/models/diyetisyen.dart';
import 'package:karmadiyet/components/diyetisyen_widget.dart';
import 'package:karmadiyet/screens/diyetisyenler_screen.dart';
class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.grey[100],
            automaticallyImplyLeading: false,
            title: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.person_outline,color: Colors.black,),
                onPressed: (){
                  ///TODO: Bu Click profil sayfasına gidecek !.
                },

              ),
            ),
          ),
          body: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                    child: Text('Selam USER !',
                      style: baslik,), ///TODO: Username eklenecek...
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Senin için özel olarak hazırlanan programlara bir bakalım',
                      style: metin,),
                  ),
                ),
                 Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 200.0,
                        child: new ListView(
                          scrollDirection: Axis.horizontal,
                          children: getDiyetisyenToUI(),
                        ),
                      ),
                    ),
                     IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {},
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 25, 10, 0),
                    child: Row(
                      children: <Widget>[
                        Text('DİYET UZMANLARI',style: baslik,),
                        SizedBox(width: 13,),
                        Container(
                          width: 90,
                          height: 30,
                          color: Colors.black,
                          child: FlatButton(
                            onPressed: () {

                              Navigator.pushNamed(context, DiyetisyenlerScreen.id);
                            } , splashColor: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.search,color:Colors.white,size: 13,),
                                SizedBox(width: 5,),
                                Text('GÖZ AT',style: siyahbuton,),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left:20),
                      child: Text(' Diyetisyenler ile iletişime geç kendine en uygun programı belirle ! ',style: paragrafkucuk,),),
                  ),
                ),
                Container(
                  decoration: haftatarif,
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: 320,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('HAFTANIN TARİFLERİ',style: basliktarif,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


