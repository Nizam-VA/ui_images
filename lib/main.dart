import 'package:flutter/material.dart';
import 'package:ui_images/screens/screenHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Images',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // routes: {
      //   'first': (context) => ScreenAdditionalInfo(),
      //   'second': (context) => ScreenManageStore(),
      //   'third': (context) => ScreenPayments(),
      //   'fourth': (context) => ScreenDukanPremium(),
      //   'fifth': (context) => ScreenOrder(),
      //   'sixth': (context) => ScreenCatalogue(),
      // },
      // initialRoute: 'first',
      home: ScreenHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
