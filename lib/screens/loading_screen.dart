import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

double longitude;
double latitude;

@override
initState() {
super.initState(); 
 void getLocation() async {
   Location location = Location(); 

  await location.getCurrentLocation();

  latitude = location.latitude;
  longitude = location.longitude;
}
getLocation();
}


void getData() async {
  http.Response response = await http.get('https://samples.openweathermap.org/data/2.5/weather?lat=latitude&lon=longitude&appid=b6907d289e10d714a6e88b30761fae22');
  print(response.statusCode);

  if(response.statusCode == 200){
    String data = response.body;
    

    var mainTemp = jsonDecode(data)['main']['temp'];
    var condition = jsonDecode(data)['weather'][0]['id'];
    var name = jsonDecode(data)['name'];
    print(mainTemp);
    print(condition);
    print(name);

  } else {
    print(response.statusCode);
  }
}

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
