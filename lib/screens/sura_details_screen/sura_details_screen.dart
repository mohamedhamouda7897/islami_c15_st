import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c15_st/data/sura_details_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String route = "SuraDetailsScreen";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;

    if (verses.isEmpty) {
      loadSuraFile(model.index);
    }

    return Scaffold(
      backgroundColor: Color(0xFF202020),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          model.nameEn,
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    model.nameAr,
                    style: GoogleFonts.elMessiri(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE2BE7F),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.white,
                        endIndent: 50,
                        indent: 50,
                      ),
                      itemBuilder: (context, index) {
                        return Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: verses[index],
                                  style: GoogleFonts.elMessiri(
                                      fontSize: 20, color: Color(0xFFE2BE7F)),
                                ),
                                TextSpan(
                                  text: "(${index + 1})",
                                  style: GoogleFonts.elMessiri(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                      itemCount: verses.length,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
    String suraFile = await rootBundle.loadString("assets/files/$index.txt");

    List<String> suraLines = suraFile.split("\n");

    verses = suraLines;
    setState(() {});
    print(suraLines);
  }
}
