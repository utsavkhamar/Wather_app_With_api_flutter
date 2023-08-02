import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wather_app/service/wather_api_client.dart';
import 'package:wather_app/wather_model.dart';

import 'compnents/card_list_view.dart';

void main() {
  runApp(const MaterialApp(
    color: Color(0xFF1B1D1F),
    debugShowCheckedModeBanner: false,
    home: WeatherHome(),
  ));
}

class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  WatherApiClient client = WatherApiClient();

  Wather? data;

  Future<void> getData() async{
    data = await client.getCurrentWather('Georgia');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF1B1D1F),
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: const Color(0xFF1B1D1F),
            title:
                Text("Weather app", style: GoogleFonts.russoOne(fontSize: 23)),
          ),
          body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
               return Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 130,
                        ),
                        Center(
                          child: Text(
                            '${data!.cityName}',
                            style: GoogleFonts.russoOne(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey.withAlpha(35)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search,
                                    color: Colors.white)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Text(
                                    "${data?.temp}°",
                                    style: GoogleFonts.russoOne(
                                        color: Colors.white, fontSize: 50),
                                  )
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(),
                              child: Row(
                                children: [
                                  Text(
                                    "Thunderstorm",
                                    style: GoogleFonts.chakraPetch(
                                        color: Colors.grey, fontSize: 15),
                                  )
                                ],
                              ))
                        ]),
                        Column(
                          children: [
                            SizedBox(
                                height: 250,
                                width: MediaQuery.of(context).size.width - 190,
                                child: Image.asset("assets/images/thunder.png"))
                          ],
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF35587A).withAlpha(60),
                              borderRadius: BorderRadius.circular(15)),
                          height: 140,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Image(
                                      image:
                                          AssetImage('assets/images/rain.png'),
                                      height: 60),
                                  Text('25°',
                                      style: GoogleFonts.russoOne(
                                          fontSize: 13, color: Colors.white)),
                                  Text('precipitation',
                                      style: GoogleFonts.russoOne(
                                          fontSize: 11, color: Colors.white))
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/humidity.png'),
                                      height: 60),
                                  Text('${data?.humidity}°',
                                      style: GoogleFonts.russoOne(
                                          fontSize: 13, color: Colors.white)),
                                  Text('Humidity',
                                      style: GoogleFonts.russoOne(
                                          fontSize: 11, color: Colors.white))
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Image(
                                      image:
                                          AssetImage('assets/images/wind.png'),
                                      height: 60),
                                  Text('${data?.wind}km/h',
                                      style: GoogleFonts.russoOne(
                                          fontSize: 13, color: Colors.white)),
                                  Text('Wind Speed',
                                      style: GoogleFonts.russoOne(
                                          fontSize: 11, color: Colors.white))
                                ],
                              )
                            ],
                          ),
                        )),
                    const Padding(
                        padding: EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: WeekUpdateListView(),
                        ))
                  ],
                );
              }
              return Container();
            },
          )),
    );
  }
}
