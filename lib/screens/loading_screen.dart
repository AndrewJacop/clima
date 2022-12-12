import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('my location latitude is ${location.latitude}');
    print('my location longitude is ${location.longitude}');
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    //try - catch
    /*String myMargin = '2a0';

    late double myMarginAsDouble;
    try {
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
      myMarginAsDouble = 10;
    }*/

    return Scaffold(
      body: Container(
        color: Colors.indigoAccent,
      ),
    );
  }
}
