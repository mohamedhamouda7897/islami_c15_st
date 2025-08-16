import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c15_st/data/hadeth_model.dart';
import 'package:islami_c15_st/screens/hadeth_details_screen.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return CarouselSlider(
      options:
          CarouselOptions(height: double.infinity, enlargeCenterPage: true),
      items: allAhadeth.map((hadeth) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetailsScreen.route,
                    arguments: hadeth);
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                    color: Color(0xFFE2BE7F),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      "assets/images/sura_details_bg.png",
                      color: Colors.black,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            hadeth.title,
                            style: GoogleFonts.elMessiri(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 22.0),
                            child: ListView.builder(
                              itemCount: hadeth.content.length,
                              itemBuilder: (context, index) {
                                return Text(
                                  hadeth.content[index],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.elMessiri(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  // TRIM
  /// String x="Mohamed"
  /// String x1="    Mohamed"
  /// String x2="Mohamed    "
  /// String x3="Moh    amed"
  /// String x4="     Mohamed     "
  loadHadethFile() async {
    String HadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethData = HadethFile.split("#");

    for (var hadeth in ahadethData) {
      List<String> hadethLines = hadeth.trim().split("\n");
      String title = hadethLines[0];

      hadethLines.removeAt(0);
      List<String> content = hadethLines;

      HadethModel model = HadethModel(title, content);
      allAhadeth.add(model);

      print(title);
    }
    setState(() {});
    // for(int i=0;i<ahadethData.length;i++){
    //    String hadethOne = ahadethData[i];
    //   List<String> hadethLines = hadethOne.split("\n");
    //   String title = hadethLines[0];
    //
    //   hadethLines.removeAt(0);
    //   List<String> content = hadethLines;
    //
    //   HadethModel model = HadethModel(title, content);
    // }
  }
}
