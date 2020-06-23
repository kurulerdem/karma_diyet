import 'package:flutter/material.dart';
import 'style.dart';
final arkaplan = BoxDecoration(
  color: Colors.white,
  image: DecorationImage(
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.color),
      image: AssetImage('assets/karma.jpg'),fit: BoxFit.cover
  ),
);
final loginbox = BoxDecoration(
  color: Colors.black,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0,3),
    )
  ],
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(40.0),
    topRight: Radius.circular(40.0),
  ),
);
final datebox = BoxDecoration(
  color: pembe,
  borderRadius: BorderRadius.all(Radius.circular(15),

  ),
);
final userinput = InputDecoration(
  hintText: 'E-Posta Adresinizi giriniz..',
  filled: true,
  fillColor: Colors.black,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
    borderSide: BorderSide(color: Colors.green),

  )
);
final passwordinput = InputDecoration(
    hintText: 'Şifre Belirleyiniz..',
    filled: true,
    fillColor: Colors.black,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: Colors.green),

    )
);
final repasswordinput = InputDecoration(
    hintText: 'Şifrenizi Tekrar Giriniz..',
    filled: true,
    fillColor: Colors.black,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: Colors.green),

    )
);