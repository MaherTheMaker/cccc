import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'screens/location_screen.dart';
import 'screens/city_screen.dart';
import 'services/networking.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  haha() async {
    var data = await NetworkingHelper('https://api.myip.com/').getData();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    haha();
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
