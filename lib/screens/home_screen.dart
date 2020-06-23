import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/components/constants.dart';
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        height: 130,
                        decoration: datebox,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
                            Text('Tarih Seç',style: pembebuton,),
                            IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){},),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 70,
                          child: Center(child: Text('Hedef Süren')), ///TODO: Buraya hedef süre değişkeni gelecek !
                          decoration: datebox,
                        ),
                        Container(
                          width: 100,
                          height: 70,
                          child: Center(child: Text('Yağ Yakmak')), ///TODO: Buraya hedef değişkeni gelecek !,
                          decoration: datebox,
                        ),
                        Container(
                          width: 100,
                          height: 70,
                          child: Center(child: Text('Ev')), ///TODO: Buraya mekan değişkeni gelecek !,
                          decoration: datebox,
                        ),

                      ],

                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 25, 10, 0),
                    child: Row(
                      children: <Widget>[
                        Text('ANTRENMANLAR',style: baslik,),
                        SizedBox(width: 13,),
                        Container(
                          width: 90,
                          height: 30,
                          color: Colors.black,
                          child: FlatButton(
                            onPressed: () {} , splashColor: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.add_circle,color:Colors.white,size: 13,),
                                SizedBox(width: 5,),
                                Text('EKLE',style: siyahbuton,),
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
                      child: Text(' Kendine uygun antremanı belirle ekle sil veya düzenle ! ',style: paragrafkucuk,),),
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
