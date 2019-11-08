import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

@override
initState() {
super.initState(); 
  getLocation() {
   Location location = Location(); 
   location.getCurrentLocation();

}
getLocation();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
