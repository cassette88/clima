import 'package:geolocator/geolocator.dart';



class Location {

double longitude = 0;
double latitude = 0;


void getCurrentLocation() async {
    try {
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    //print(position);
    longitude = position.longitude;
    latitude = position.latitude;
    print("longitude: $longitude");
    print("latitude: $latitude");
    }
    catch(e){
      print(e);
    }
    
}

}