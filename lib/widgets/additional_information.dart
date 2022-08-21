import 'package:flutter/material.dart';

const titleFont = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18.0,
);
const infoFont = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 18.0,
);

Widget additionalInformation(
    String wind,
    String humidity,
    String pressure,
    String feelsLike,
    ) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Wind',
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  'Pressure',
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  pressure,
                  style: infoFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Humidity',
                  style: titleFont,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  'Feels Like',
                  style: titleFont,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: infoFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  feelsLike,
                  style: infoFont,
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
