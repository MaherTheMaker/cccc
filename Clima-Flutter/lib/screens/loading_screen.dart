import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlocationdata(); //TODO debug here for relase fuck syria done and done
  }

  void getlocationdata() async {
    var data = await WeatherModel().getLocationWeather();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LocationScreen(data)));
  }

  @override
  Widget build(BuildContext context) {
    getlocationdata();
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.red,
          size: 50.0,
        ),
      ),
    );
  }
}

//
//print(f);
//print(g);
//print(h);
