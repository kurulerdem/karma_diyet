import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/components/constants.dart';
import 'package:karmadiyet/models/diyetisyen.dart';
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
                            onPressed: () {} , splashColor: Colors.red,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
    Diyetisyen myDiyetisyen = new Diyetisyen('Dt. Aslı Olgun', 500, 4, 423.4, picture);
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
