import 'package:flutter/material.dart';
import 'package:karmadiyet/components/style.dart';
import 'package:karmadiyet/components/diyetuzmanlari_widget.dart';

class DiyetisyenlerScreen extends StatefulWidget {
  static String id = 'diyetisyenler_screen';
  @override
  _DiyetisyenlerScreenState createState() => _DiyetisyenlerScreenState();
}

class _DiyetisyenlerScreenState extends State<DiyetisyenlerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
             children: getDiyetisyenlerToUI(),
           ),
          ),
        ),
      ),
    );
  }
}


