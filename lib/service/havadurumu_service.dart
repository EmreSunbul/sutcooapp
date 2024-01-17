import 'dart:convert';


import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:sutcooapp/buttons/models/havadurumu_model.dart';
import 'package:http/http.dart' as http;

class WeatherService{


  static const BASE_URL = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey;


  WeatherService(this.apiKey);

  Future<Weather> HavaDurumuGetir (String sehirAd) async{
    final  response =await http.get(Uri.parse('$BASE_URL?q=$sehirAd&appid=$apiKey&units=metric'));

    if(response.statusCode ==200){
      return Weather.FromJson(jsonDecode(response.body  ));
    }
    else{
      throw Exception('veri yüklenemedi.');
    }
  }


  Future<String> SehirGetir() async{
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
    permission = await Geolocator.requestPermission();
    }
       Position position = await Geolocator.getCurrentPosition(
         desiredAccuracy: LocationAccuracy.high);
       
      
     List<Placemark> placemarks = 
     await placemarkFromCoordinates(position.latitude, position.longitude);

     String? city = placemarks [0].locality;

     return city ?? "";


  }
}