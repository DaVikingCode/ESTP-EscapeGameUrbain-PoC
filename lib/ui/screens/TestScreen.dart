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

  final bgBackgroundColor = const Color(0xFF262d38);

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
            flex: 5, // 40%
            child: Container(
                child: Column(children: [
              Title(
                  title: "Ma collection",
                  color: $styles.colors.black,
                  child: Text(
                    "Ma collection",
                    style:
                        $styles.text.h1.copyWith(color: $styles.colors.white),
                  )),
              Row(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Text("Découvrez les ",
                      style: $styles.text.h2
                          .copyWith(color: $styles.colors.white)),
                  Text("métiers",
                      style: $styles.text.h2
                          .copyWith(color: $styles.colors.purple)),
                  Text(" et les parcours de ",
                      style: $styles.text.h2
                          .copyWith(color: $styles.colors.white)),
                  Text("formations",
                      style: $styles.text.h2
                          .copyWith(color: $styles.colors.purple)),
                  Expanded(flex: 1, child: Container())
                ],
              ),
              Accordion(
                maxOpenSections: 2,
                header: Image(
                    image: AssetImage(
                        "assets/images/Parcours/parcours_fond_violet_01.png")),
                scaleWhenAnimating: false,
                openAndCloseAnimation: true,
                headerBackgroundColorOpened: bgBackgroundColor,
                contentBackgroundColor: Colors.transparent,
                headerBackgroundColor: bgBackgroundColor,
                contentBorderColor: Colors.transparent,
                flipRightIconIfOpen: false,
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
                    rightIcon: Image(
                        width: 80,
                        image: AssetImage(
                            "assets/images/Parcours/parcours_fond_violet_03.png")),
                    flipRightIconIfOpen: false,
                    content: Accordion(
                      maxOpenSections: 1,
                      headerPadding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 15),
                      headerBackgroundColorOpened: bgBackgroundColor,
                      contentBackgroundColor: Colors.transparent,
                      headerBackgroundColor: bgBackgroundColor,
                      contentBorderColor: Colors.transparent,
                      flipRightIconIfOpen: false,
                      children: [
                        AccordionSection(
                          isOpen: false,
                          rightIcon: Image(
                              width: 80,
                              image: AssetImage(
                                  "assets/images/Parcours/parcours_fond_jaune_03.png")),
                          header: Text('Bac général / Pro / Tech',
                              style: $styles.text.h4
                                  .copyWith(color: $styles.colors.white)),
                          headerBackgroundColorOpened: bgBackgroundColor,
                          contentBackgroundColor: Colors.transparent,
                          headerBackgroundColor: bgBackgroundColor,
                          contentBorderColor: Colors.transparent,
                          flipRightIconIfOpen: false,
                          content: Column(
                            children: [
                              AccordionSection(
                                isOpen: false,
                                rightIcon: Image(
                                    width: 80,
                                    image: AssetImage(
                                        "assets/images/Parcours/parcours_fond_vert_03.png")),
                                header: Text(
                                    "Bac Pro - Systèmes numériques option a sûreté et sécurité des infrastructures, de l'hébitat et du tertiaire (SSIHT)",
                                    style: $styles.text.h4
                                        .copyWith(color: $styles.colors.white)),
                                headerPadding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 15),
                                content:
                                    Text(_loremIpsum, style: $styles.text.body),
                                headerBackgroundColorOpened: bgBackgroundColor,
                                contentBackgroundColor: Colors.transparent,
                                headerBackgroundColor: bgBackgroundColor,
                                contentBorderColor: Colors.transparent,
                                flipRightIconIfOpen: false,
                              ),
                              AccordionSection(
                                isOpen: false,
                                rightIcon: Image(
                                    width: 80,
                                    image: AssetImage(
                                        "assets/images/Parcours/parcours_fond_vert_03.png")),
                                headerBackgroundColorOpened: bgBackgroundColor,
                                contentBackgroundColor: Colors.transparent,
                                headerBackgroundColor: bgBackgroundColor,
                                contentBorderColor: Colors.transparent,
                                flipRightIconIfOpen: false,
                                headerPadding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 15),
                                header: Text(
                                    "BAC Pro - Sustèmes numériques option B Audiovisuels, réseau et équipement domestiques (ARED)",
                                    style: $styles.text.h4
                                        .copyWith(color: $styles.colors.white)),
                                content:
                                    Text(_loremIpsum, style: $styles.text.body),
                              )
                            ],
                          ),
                        ),
                        AccordionSection(
                          isOpen: false,
                          rightIcon: Image(
                              width: 80,
                              image: AssetImage(
                                  "assets/images/Parcours/parcours_fond_jaune_03.png")),
                          header: Text('BTS',
                              style: $styles.text.h4
                                  .copyWith(color: $styles.colors.white)),
                          headerBackgroundColorOpened: bgBackgroundColor,
                          contentBackgroundColor: Colors.transparent,
                          headerBackgroundColor: bgBackgroundColor,
                          contentBorderColor: Colors.transparent,
                          flipRightIconIfOpen: false,
                          content: Column(
                            children: [
                              AccordionSection(
                                isOpen: true,
                                rightIcon: Image(
                                    width: 80,
                                    image: AssetImage(
                                        "assets/images/Parcours/parcours_fond_vert_03.png")),
                                header: Text(
                                    "Bac Pro - Systèmes numériques option a sûreté et sécurité des infrastructures, de l'hébitat et du tertiaire (SSIHT)",
                                    style: $styles.text.h4
                                        .copyWith(color: $styles.colors.white)),
                                content:
                                    Text(_loremIpsum, style: $styles.text.body),
                                headerPadding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 15),
                                headerBackgroundColorOpened: bgBackgroundColor,
                                contentBackgroundColor: Colors.transparent,
                                headerBackgroundColor: bgBackgroundColor,
                                contentBorderColor: Colors.transparent,
                              ),
                              AccordionSection(
                                isOpen: false,
                                rightIcon: Image(
                                    width: 80,
                                    image: AssetImage(
                                        "assets/images/Parcours/parcours_fond_vert_03.png")),
                                header: Text(
                                    "BAC Pro - Sustèmes numériques option B Audiovisuels, réseau et équipement domestiques (ARED)",
                                    style: $styles.text.h4
                                        .copyWith(color: $styles.colors.white)),
                                headerPadding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 15),
                                content: Text("content"),
                                headerBackgroundColorOpened: bgBackgroundColor,
                                contentBackgroundColor: Colors.transparent,
                                headerBackgroundColor: bgBackgroundColor,
                                contentBorderColor: Colors.transparent,
                              )
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
                          "Le secteur du bâtiment représente à lui seul: Le secteur du bâtiment représente à lui seul:Le secteur du bâtiment représente à lui seul:Le secteur du bâtiment représente à lui seul:",
                          style: $styles.text.body
                              .copyWith(color: $styles.colors.white),
                        ),
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
                                    SizedBox(
                                      height: 200,
                                      child: ListView(
                                        children: [
                                          RadioListTile(
                                            title: Text(
                                              "27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre",
                                              style: $styles.text.body.copyWith(
                                                  color: $styles.colors.white),
                                            ),
                                            value: "1",
                                            groupValue: "response",
                                            onChanged: (value) {},
                                          ),
                                          RadioListTile(
                                            title: Text(
                                              "27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre",
                                              style: $styles.text.body.copyWith(
                                                  color: $styles.colors.white),
                                            ),
                                            value: "2",
                                            groupValue: "response",
                                            onChanged: (value) {},
                                          ),
                                          RadioListTile(
                                            title: Text(
                                              "27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre",
                                              style: $styles.text.body.copyWith(
                                                  color: $styles.colors.white),
                                            ),
                                            value: "3",
                                            groupValue: "response",
                                            onChanged: (value) {},
                                          ),
                                          RadioListTile(
                                            title: Text(
                                              "27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre 27% des émissions de gaz à effet de serre",
                                              style: $styles.text.body.copyWith(
                                                  color: $styles.colors.white),
                                            ),
                                            value: "4",
                                            groupValue: "response",
                                            onChanged: (value) {},
                                          ),
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
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Cartes/cartes_fond_titre_01.png")),
                    borderRadius: BorderRadius.circular($styles.insets.md)),
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Image(
                          image: AssetImage(
                              "assets/images/Cartes/cartes_chara_01.png"))),
                  Expanded(
                      flex: 8,
                      child: Column(children: [
                        Row(
                          children: [
                            Text("Métiers découverts : ",
                                style: $styles.text.h2
                                    .copyWith(color: $styles.colors.white)),
                            Container(
                                decoration: BoxDecoration(
                                    color: $styles.colors.blue,
                                    borderRadius: BorderRadius.circular(
                                        $styles.insets.xxs)),
                                child: Text("1",
                                    style: $styles.text.h1.copyWith(
                                        color: $styles.colors.white))),
                            Container(
                                decoration: BoxDecoration(
                                    color: $styles.colors.blue,
                                    borderRadius: BorderRadius.circular(
                                        $styles.insets.xxs)),
                                child: Text("2",
                                    style: $styles.text.h1
                                        .copyWith(color: $styles.colors.white)))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Progression générale:",
                                style: $styles.text.h3
                                    .copyWith(color: $styles.colors.white)),
                            Text("5%",
                                style: $styles.text.h3
                                    .copyWith(color: $styles.colors.white)),
                          ],
                        )
                      ]))
                ]),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Cartes/cartes_fond_like_01.png")),
                    borderRadius: BorderRadius.circular($styles.insets.md)),
                child: Row(children: [
                  Expanded(
                      flex: 9,
                      child: Text("Trier par numéro",
                          style: $styles.text.body
                              .copyWith(color: $styles.colors.white))),
                  Expanded(
                      flex: 1,
                      child: Image(
                        image: AssetImage(
                            "assets/images/Cartes/cartes_coeur_like_01.png"),
                      ))
                ]),
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
