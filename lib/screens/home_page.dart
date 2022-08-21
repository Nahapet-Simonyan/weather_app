import 'package:flutter/material.dart';
import 'package:my_weather_app/models/weather_model.dart';
import 'package:my_weather_app/screens/change_location.dart';
import 'package:my_weather_app/services/weather_api_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  void get ssss {}

  Future<void> getData() async {
    data = await client.getCurrentWeather('Yerevan');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffa4d9fc),
        title: const Text(
          'Weather Application',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var sunrise = data!.sunrise! * 1000;
            var sunset = data!.sunset! * 1000;

            return Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // *** Top Main Temp ***
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text(
                            '${data!.cityName}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 48.0,
                            ),
                          ),
                          Text(
                            '${data!.temp?.toInt()} \u2103 ${getWeatherIcon(data!.id!)}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                            ),
                          ),
                          // *** Sunrise and Sunset ***
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.brightness_6_outlined,
                                  color: Colors.amberAccent,
                                ),
                                Text(
                                  'Sunrise: ${DateTime.fromMillisecondsSinceEpoch(sunrise).hour}:'
                                  '${DateTime.fromMillisecondsSinceEpoch(sunrise).minute} ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.brightness_4_outlined,
                                  color: Colors.amber,
                                ),
                                Text(
                                  'Sunset: ${DateTime.fromMillisecondsSinceEpoch(sunset).hour}:'
                                  '${DateTime.fromMillisecondsSinceEpoch(sunset).minute}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // *** Center info ***
                    Container(
                      width: MediaQuery.of(context).size.width - 32.0,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: const Color(0x6E98BDE0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 16.0,
                        ),
                        child: Column(
                          children: [
                            // *** top info ***
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Weather Description',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // decoration: TextDecoration.underline,
                                  ),
                                ),
                                const Text(
                                  ':',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  data!.description!.toUpperCase(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.white,
                            ),
                            // *** main info ***
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width /5,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Feels Like',
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(Icons.nature_people),
                                        Text(
                                          '${data!.feelsLike!.toInt()} \u2103',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width /5,
                                    height: MediaQuery.of(context).size.height /5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Feels Like',
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(Icons.nature_people),
                                        Text(
                                          '${data!.feelsLike!.toInt()} \u2103',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Feels Like',
                                        textAlign: TextAlign.center,
                                      ),
                                      Icon(Icons.nature_people),
                                      Text(
                                        '${data!.feelsLike!.toInt()} \u2103',
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        'Wind',
                                        textAlign: TextAlign.center,
                                      ),
                                      const Icon(Icons.all_inclusive),
                                      Text(
                                        '${data!.wind} km/h',
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Humidity',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(),
                                      ),
                                      const Icon(Icons.invert_colors),
                                      Text(
                                        '${data!.humidity}%',
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        'Pressure',
                                        textAlign: TextAlign.center,
                                      ),
                                      const Icon(Icons.vertical_align_center),
                                      Text(
                                        '${data!.pressure} mb',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const ChangeLocation(),
                  ],
                ),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
