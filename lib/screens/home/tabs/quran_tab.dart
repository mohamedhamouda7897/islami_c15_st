import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c15_st/cache/helper.dart';
import 'package:islami_c15_st/data/quran_model.dart';
import 'package:islami_c15_st/screens/home/widgets/horzental_sura_name_item.dart';
import 'package:islami_c15_st/screens/home/widgets/sura_name_item.dart';
import 'package:islami_c15_st/screens/sura_details_screen/sura_details_screen.dart';

import '../../../data/sura_details_model.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> suraVerseCounts = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  List<String> suraNamesEn = [
    "Al-Fatiha",
    "Al-Baqarah",
    "Aal-E-Imran",
    "An-Nisa",
    "Al-Ma'idah",
    "Al-An'am",
    "Al-A'raf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Isra",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiya",
    "Al-Hajj",
    "Al-Mu'minun",
    "An-Nur",
    "Al-Furqan",
    "Ash-Shu'ara",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankabut",
    "Ar-Rum",
    "Luqman",
    "As-Sajda",
    "Al-Ahzab",
    "Saba",
    "Fatir",
    "Ya-Sin",
    "As-Saffat",
    "Sad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiyah",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Qaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqi'ah",
    "Al-Hadid",
    "Al-Mujadila",
    "Al-Hashr",
    "Al-Mumtahanah",
    "As-Saff",
    "Al-Jumu'ah",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haqqah",
    "Al-Ma'arij",
    "Nuh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddaththir",
    "Al-Qiyamah",
    "Al-Insan",
    "Al-Mursalat",
    "An-Naba",
    "An-Nazi'at",
    "Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Buruj",
    "At-Tariq",
    "Al-A'la",
    "Al-Ghashiyah",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Ad-Duhaa",
    "Ash-Sharh",
    "At-Tin",
    "Al-Alaq",
    "Al-Qadr",
    "Al-Bayyinah",
    "Az-Zalzalah",
    "Al-Adiyat",
    "Al-Qari'ah",
    "At-Takathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraysh",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Nas"
  ];

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<QuranModel> quranList = [];
  var _searchController = TextEditingController();

  List<QuranModel> filteredData = [];

  generateQuranList() {
    for (int i = 0; i < suraNames.length; i++) {
      quranList.add(QuranModel(
          nameAr: suraNames[i],
          nameEn: suraNamesEn[i],
          numOfVerses: suraVerseCounts[i],
          index: i));
    }
  }

  @override
  void initState() {
    super.initState();
    generateQuranList();
    filteredData = quranList;
    _searchController.addListener(filterList);
  }

  void filterList() {
    String query = _searchController.text.toLowerCase(); // al
    filteredData = quranList.where(
      (element) {
        return element.nameEn.toLowerCase().contains(query) ||
            element.nameAr.toLowerCase().contains(query);
      },
    ).toList();

    // CacheHelper.init()
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  List<String> recently = CacheHelper.getData("quran") ?? [];

  @override
  Widget build(BuildContext context) {
    recently = CacheHelper.getData("quran") ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 21,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            controller: _searchController,
            style: GoogleFonts.elMessiri(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFEFFE8)),
            decoration: InputDecoration(
              hintText: "Sura Name",
              hintStyle: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFEFFE8)),
              prefixIcon: Image.asset("assets/icons/prefix_ic.png"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFE2BE7F)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFE2BE7F)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 21,
        ),
        if (recently.length != 0) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Most Recently",
              style: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFEFFE8)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 150,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetailsScreen.route,
                        arguments: SuraDetailsModel(
                            suraNamesEn[int.parse(recently[index])],
                            suraNames[int.parse(recently[index])],
                            int.parse(recently[index]) + 1));
                  },
                  child: hHorizontalSuraNameItem(
                    nameAr: suraNames[int.parse(recently[index])],
                    index: index + 1,
                    nameEn: suraNamesEn[int.parse(recently[index])],
                    numOfVerses: suraVerseCounts[int.parse(recently[index])],
                  ),
                );
              },
              itemCount: recently.length,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Suras List",
            style: GoogleFonts.elMessiri(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFEFFE8)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                endIndent: 64,
                indent: 64,
                color: Colors.white,
                thickness: 1,
              ),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () async {
                    List<String> mostRecently =
                        CacheHelper.getData("quran") ?? [];
                    if (!mostRecently.contains(index.toString())) {
                      mostRecently.insert(0, index.toString());
                    }

                    await CacheHelper.cacheData("quran", mostRecently);

                    setState(() {});
                    Navigator.pushNamed(context, SuraDetailsScreen.route,
                        arguments: SuraDetailsModel(
                            suraNamesEn[index], suraNames[index], index + 1));
                  },
                  child: SuraNameItem(
                    nameAr: filteredData[index].nameAr,
                    index: filteredData[index].index + 1,
                    nameEn: filteredData[index].nameEn,
                    numOfVerses: filteredData[index].numOfVerses,
                  ),
                );
              },
              itemCount: filteredData.length,
            ),
          ),
        )
      ],
    );
  }
}
