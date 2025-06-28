import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset("assets/images/appbar_logo.png"),
        SizedBox(
          height: 21,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        )
      ],
    );
  }
}
