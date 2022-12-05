import 'package:flutter/material.dart';

//import 'Flutter Version2/APIData.dart';
//import 'Flutter Version2/APIData.dart';
import 'Flutter Version2/fromAPI.dart';
//import 'login.dart';
// import 'package:tranning_erobot/ButtomAppBar.dart';
// import 'package:tranning_erobot/Custom_View.dart';
// import 'package:tranning_erobot/Flutter%20Version2/APIData.dart';
// import 'package:tranning_erobot/Flutter%20Version2/API_http.dart';
// import 'package:tranning_erobot/Flutter%20Version2/Future_builder_delay.dart';
// import 'package:tranning_erobot/Flutter%20Version2/fromAPI.dart';
// import 'package:tranning_erobot/ListView_builder.dart';
// import 'package:tranning_erobot/Multi_Page/Multi_MainPage.dart';
// import 'package:tranning_erobot/My_statefull.dart';
// import 'package:tranning_erobot/Pages1/detail_movie_page.dart';
// import 'package:tranning_erobot/Row_Column.dart';
// import 'package:tranning_erobot/login.dart';
// import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: ButtomAppBars(),
    //home: LoginForm(),
   // home: MyStatedull(),
  // home: RowColumnPage(),
    //home: MyListView(),
   // home: MyCustomerView(),
   //home: MultiPage(),
   //home: MyFutureBuilder(),
   // home: MyGetData(),
   //home: APIpage(),
 // home: DetailMoviePage(),
  home: APIData(),

   );
  }
}
