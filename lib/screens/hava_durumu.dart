import 'package:flutter/material.dart';
import 'package:sutcooapp/buttons/models/havadurumu_model.dart';
import 'package:sutcooapp/service/havadurumu_service.dart';
import 'package:lottie/lottie.dart';

class HavaDurumuSayfasi extends StatefulWidget {
  const HavaDurumuSayfasi({super.key});

  @override
  State<HavaDurumuSayfasi> createState() => _HavaDurumuSayfasiState();
}

class _HavaDurumuSayfasiState extends State<HavaDurumuSayfasi> {
  //api key
 final _weatherservice =WeatherService('cf305e5ef76478b9de13c22cfcc95397');
 Weather? _weather;

  //fetch weather
  _fetchWeather() async{
    // anlık şehir al
    String  sehirAd= await _weatherservice.SehirGetir();

          // şehir için hava durumu al

           try{
            final weather = await _weatherservice.HavaDurumuGetir(sehirAd);
            setState(() {
              _weather= weather;
            });
           }
          
    catch (e) {
      print(e);
    }
     }


String durumAnimasyon(String? durum) {
  if (durum == null) return 'assets/sun.json.json';

  switch (durum.toLowerCase()) {
    case 'fırtınalı':
      return 'assets/thunder.json.json';
    case 'güneşli':
      return 'assets/sun.json.json';
    case 'yağmurlu':
      return 'assets/rain.json.json';
    case 'bulutlu':
      return 'assets/cloud.json.json';
    default:
      // Belirli bir durum eşleşmezse, varsayılan bir değer döndürün.
      return 'assets/sun.json.json';
  }
}


  @override
  void initState(){
    super.initState();

    _fetchWeather();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.sehirAd ?? "Konum Bulunuyor"),

               Lottie.asset(durumAnimasyon(_weather?.durum)), 


            Text('${_weather?.sicaklik.round()} C'),


       
          ],
        ),
      ),
    );
  }
}