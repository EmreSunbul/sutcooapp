class Weather{
  final String sehirAd;
  final double sicaklik;
  final  String  durum;
  
  Weather({

   required this.sehirAd,
   required this.sicaklik,
   required this.durum


  });
  factory Weather.FromJson(Map<String,dynamic> json ) {
    return Weather(
      sehirAd: json['name'], 
      sicaklik: json['main']['temp'].toDouble(),
       durum: json['weather'][0]['main']);
  }
  
  }