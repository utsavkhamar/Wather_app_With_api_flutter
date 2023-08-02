
class Wather{
  String? cityName;
  double? temp;
  int? wind;
  int? humidity;
  double? precipitation;
  double? feelsLike;
  int? pressure;

  Wather({
    this.cityName,
    this.feelsLike,
    this.humidity,
    this.precipitation,
    this.pressure,
    this.temp,
    this.wind,
});


  Wather.fromJson(Map<String, dynamic> json){
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    humidity = json['main']['humidity'];
    precipitation = json['precip'];
    pressure = json['main']['pressure'];
    feelsLike = json['main']['feels_like'];
  }

}