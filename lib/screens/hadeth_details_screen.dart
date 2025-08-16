import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c15_st/data/hadeth_model.dart';
import 'package:islami_c15_st/data/sura_details_model.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String route = "HadethDetailsScreen";

  HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;

    return Scaffold(
      backgroundColor: Color(0xFF202020),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          model.title,
          style: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFE2BE7F),
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFFE2BE7F)),
        backgroundColor: Color(0xFF202020),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/sura_details_bg.png"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 44.0, vertical: 32),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text.rich(
                      TextSpan(
                        text: model.content[index],
                        style: GoogleFonts.elMessiri(
                            fontSize: 20, color: Color(0xFFE2BE7F)),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                itemCount: model.content.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
