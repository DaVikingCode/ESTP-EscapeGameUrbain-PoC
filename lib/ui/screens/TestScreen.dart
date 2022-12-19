import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:escape_game_urbain_ecran/styles/styles.dart';
import 'package:accordion/accordion.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  final bgBackgroundColor = Color(0xFF262d38);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/all_background_01.jpg"),
              fit: BoxFit.cover)),
      child: Row(
        children: <Widget>[
          Expanded(flex: 3, child: Container()),
          Expanded(
            flex: 4, // 40%
            child: Container(
                child: Column(children: [
              Title(
                  title: "Ma collection",
                  color: $styles.colors.black,
                  child: Text(
                    "Ma collection",
                    style: $styles.text.h1,
                  )),
              Text("Découvrez les métiers et les parcours de formations",
                  style: $styles.text.h2.copyWith(color: $styles.colors.black)),
              Accordion(
                maxOpenSections: 2,
                headerBackgroundColorOpened: bgBackgroundColor,
                header: Image(
                    image: AssetImage(
                        "assets/images/Parcours/parcours_fond_violet_01.png")),
                scaleWhenAnimating: false,
                openAndCloseAnimation: true,
                contentBackgroundColor: Colors.transparent,
                headerBackgroundColor: bgBackgroundColor,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                sectionClosingHapticFeedback: SectionHapticFeedback.light,
                children: [
                  AccordionSection(
                    isOpen: false,
                    header: Text('Parcours Ingénieurs Systèmes Numériques',
                        style: $styles.text.h4
                            .copyWith(color: $styles.colors.white)),
                    content: Accordion(
                      maxOpenSections: 1,
                      headerPadding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 15),
                      children: [
                        AccordionSection(
                          isOpen: true,
                          leftIcon: const Icon(Icons.insights_rounded,
                              color: Colors.white),
                          header:
                              Text('Nested Section #1', style: $styles.text.h4),
                          content: Text(_loremIpsum, style: $styles.text.body),
                          contentHorizontalPadding: 20,
                          contentBorderColor: Colors.black54,
                        ),
                        AccordionSection(
                          isOpen: true,
                          leftIcon: const Icon(Icons.compare_rounded,
                              color: Colors.white),
                          header:
                              Text('Nested Section #2', style: $styles.text.h4),
                          content: Row(
                            children: [
                              const Icon(Icons.compare_rounded,
                                  size: 120, color: Colors.orangeAccent),
                              Flexible(
                                  flex: 1,
                                  child: Text(_loremIpsum,
                                      style: $styles.text.body)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all($styles.insets.md),
                    decoration: BoxDecoration(
                        color: bgBackgroundColor,
                        borderRadius: BorderRadius.circular($styles.insets.md)),
                    child: Column(
                      children: [
                        Text(
                            "Le secteur du bâtiment représente à lui seul: Le secteur du bâtiment représente à lui seul:Le secteur du bâtiment représente à lui seul:Le secteur du bâtiment représente à lui seul:"),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/Quizz/quizz_chara_01.png")),
                            ),
                            Expanded(
                                flex: 8,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 200,
                                      child: Column(
                                        children: [
                                          RadioListTile(
                                            title: Text("Male"),
                                            value: "male",
                                            groupValue: "gender",
                                            onChanged: (value) {},
                                          ),
                                          RadioListTile(
                                            title: Text("Female"),
                                            value: "female",
                                            groupValue: "gender",
                                            onChanged: (value) {},
                                          ),
                                          RadioListTile(
                                            title: Text("Other"),
                                            value: "other",
                                            groupValue: "gender",
                                            onChanged: (value) {},
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 2, child: Text("image")),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Text("Métiers découverts : 12"),
                        Text("Progression générale : 5%")
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [Text("Trier par numéro"), Icon(Icons.favorite)],
              ),
              Column(children: [
                Center(
                    child: SizedBox(
                  height: 500,
                  child: GridView.count(
                    primary: false,
                    crossAxisCount: 3,
                    children: [
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_front_carte_01.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_front_carte_03.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_back_carte_01.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_front_carte_02.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_front_carte_05.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_back_carte_01.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_back_carte_01.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_back_carte_01.png")),
                      ),
                      Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/Cartes/cartes_front_carte_04.png")),
                      ),
                    ],
                  ),
                ))
              ])
            ])),
          ),
          Expanded(
            flex: 3, // 20%
            child: Container(),
          )
        ],
      ),
    );
  }
}
