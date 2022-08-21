import 'package:flutter/material.dart';

class ChangeLocation extends StatelessWidget {
  const ChangeLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newCity;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            autofocus: false,
            textAlign: TextAlign.start,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFF98BDE0),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xff282828),
                  width: 5.0,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              prefixIcon: const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              hintText: 'Выберите локацию',
              hintStyle: const TextStyle(
                color: Color(0xffd5d5d5),
              ),
              filled: true,
            ),
            onChanged: (newText) {
              newCity = newText;
            },
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(Colors.lightBlueAccent),
          ),
          onPressed: () {
          },
          child: const Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
        // FloatingActionButton(
        //   onPressed: (newData) =>
        //     context.read<Location>().changeCity(newData),
        // )
      ],
    );
  }
}
