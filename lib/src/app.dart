
import 'package:flutter/cupertino.dart';
import 'package:listdemo_app/src/screens/home_screens.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return CupertinoApp(
     home: HomeScreen(),
   );
  }

}