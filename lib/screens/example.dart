// import 'package:flutter/material.dart';
// import 'package:my_weather_app/models/location_provider.dart';
// import 'package:provider/provider.dart';
//
// class Example extends StatelessWidget {
//   const Example({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFf9f9f9),
//         // title: const Text(
//         //   'Weather App',
//         //   style: TextStyle(
//         //     color: Color(0xff000000),
//         //   ),
//         // ),
//         title: Container(
//           child: Text(context.watch<Location>().getCity!),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.menu),
//           color: Colors.black,
//         ),
//       ),
//       body: Center(
//         child: Widget1(),
//       ),
//     );
//   }
// }
//
// class Widget1 extends StatelessWidget {
//   const Widget1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Widget2();
//   }
// }
//
// class Widget2 extends StatelessWidget {
//   const Widget2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           MyTextField(),
//           Widget3()
//         ],
//       ),
//     );
//   }
// }
//
// class Widget3 extends StatelessWidget {
//   const Widget3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(context.watch<Location>().getCity!),
//     );
//   }
// }
//
// class MyTextField extends StatelessWidget {
//   const MyTextField({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (newData) => context.read<Location>().changeCity(newData),
//     );
//   }
// }
//
//
