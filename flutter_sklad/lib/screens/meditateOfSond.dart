import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditateOfSond extends StatefulWidget {
  const MeditateOfSond({super.key});

  @override
  State<MeditateOfSond> createState() => _MeditateOfSondState();
}

class _MeditateOfSondState extends State<MeditateOfSond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 14),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(217, 217, 217, 1)))),
            child: SafeArea(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text("Meditate",
                        style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: const Image(image: AssetImage("assets/lopa.png"))),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(242, 201, 76, 1),
                                    borderRadius: BorderRadius.circular(25)),
                                alignment: Alignment.topCenter,
                                height: 180,
                                child: const Image(
                                    image: AssetImage("assets/sunAndMoon.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 11),
                                child: Text(
                                  "A Song of Moon",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, top: 5),
                                child: Text(
                                  "Start with the basics",
                                  style:
                                      GoogleFonts.plusJakartaSans(fontSize: 16),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(250, 250, 250, 1),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                          offset: const Offset(0, 0.7))
                                    ]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 5),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              backgroundColor:
                                                  Colors.transparent,
                                              shadowColor: Colors.transparent,
                                              minimumSize: const Size(0, 0)),
                                          onPressed: () => {},
                                          child: const Image(
                                              image: AssetImage(
                                                  "assets/heart10.png"))),
                                    ),
                                    Text(
                                      "9 Sessions",
                                      style: GoogleFonts.plusJakartaSans(
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              0, 0, 0, 0.5)),
                                    ),
                                    Expanded(child: Container()),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 3),
                                      child: ElevatedButton(
                                          onPressed: () => {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              shadowColor: Colors.transparent),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Start  ",
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                        fontSize: 12,
                                                        color: const Color
                                                                .fromRGBO(
                                                            0, 0, 0, 0.5)),
                                              ),
                                              const Image(
                                                  image: AssetImage(
                                                      "assets/chevron.forward.png"))
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 24, right: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                240, 146, 53, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: const Image(
                                            image: AssetImage(
                                                "assets/4.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 11),
                                        child: Text(
                                          "The Sleep Hour",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 5),
                                        child: Text(
                                          "Ashna Mukherjee",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 13,
                                              color: Colors.black.withOpacity(0.5)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                250, 250, 250, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 0,
                                                  blurRadius: 0,
                                                  offset: const Offset(0, 0.7))
                                            ]),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, right: 5),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      shadowColor:
                                                          Colors.transparent,
                                                      minimumSize:
                                                          const Size(0, 0)),
                                                  onPressed: () => {},
                                                  child: const Image(
                                                      image: AssetImage(
                                                          "assets/heart10.png"))),
                                            ),
                                            Text(
                                              "3 Sessions",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.5)),
                                            ),
                                            Expanded(child: Container()),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0),
                                              child: ElevatedButton(
                                                  onPressed: () => {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          shadowColor: Colors
                                                              .transparent),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Start  ",
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                color: const Color
                                                                        .fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0.5)),
                                                      ),
                                                      const Image(
                                                          image: AssetImage(
                                                              "assets/chevron.forward.png"))
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                242, 201, 76, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: const Image(
                                            image: AssetImage(
                                                "assets/2.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 11),
                                        child: Text(
                                          "Easy on the Mission",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 5),
                                        child: Text(
                                          "Peter Mach",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 13,
                                              color: Colors.black.withOpacity(0.5)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                250, 250, 250, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 0,
                                                  blurRadius: 0,
                                                  offset: const Offset(0, 0.7))
                                            ]),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, right: 5),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      shadowColor:
                                                          Colors.transparent,
                                                      minimumSize:
                                                          const Size(0, 0)),
                                                  onPressed: () => {},
                                                  child: const Image(
                                                      image: AssetImage(
                                                          "assets/heart10.png"))),
                                            ),
                                            Text(
                                              "5 minutes",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.5)),
                                            ),
                                            Expanded(child: Container()),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0),
                                              child: ElevatedButton(
                                                  onPressed: () => {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          shadowColor: Colors
                                                              .transparent),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Start  ",
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                color: const Color
                                                                        .fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0.5)),
                                                      ),
                                                      const Image(
                                                          image: AssetImage(
                                                              "assets/chevron.forward.png"))
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 24, right: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                47, 128, 237, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: const Image(
                                            image: AssetImage(
                                                "assets/3.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 11),
                                        child: Text(
                                          "Relax with Me",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 5),
                                        child: Text(
                                          "Amanda James",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 13,
                                              color: Colors.black.withOpacity(0.5)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                250, 250, 250, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 0,
                                                  blurRadius: 0,
                                                  offset: const Offset(0, 0.7))
                                            ]),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, right: 5),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      shadowColor:
                                                          Colors.transparent,
                                                      minimumSize:
                                                          const Size(0, 0)),
                                                  onPressed: () => {},
                                                  child: const Image(
                                                      image: AssetImage(
                                                          "assets/heart10.png"))),
                                            ),
                                            Text(
                                              "3 Sessions",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.5)),
                                            ),
                                            Expanded(child: Container()),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0),
                                              child: ElevatedButton(
                                                  onPressed: () => {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          shadowColor: Colors
                                                              .transparent),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Start  ",
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                color: const Color
                                                                        .fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0.5)),
                                                      ),
                                                      const Image(
                                                          image: AssetImage(
                                                              "assets/chevron.forward.png"))
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                3, 158, 162, 1),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: const Image(
                                            image: AssetImage(
                                                "assets/4.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 11),
                                        child: Text(
                                          "Sun and Energy",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 11, top: 5),
                                        child: Text(
                                          "Micheal Hiu",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 13,
                                              color: Colors.black.withOpacity(0.5)),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                250, 250, 250, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 0,
                                                  blurRadius: 0,
                                                  offset: const Offset(0, 0.7))
                                            ]),
                                        child: Row(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12, right: 5),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                      tapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      shadowColor:
                                                          Colors.transparent,
                                                      minimumSize:
                                                          const Size(0, 0)),
                                                  onPressed: () => {},
                                                  child: const Image(
                                                      image: AssetImage(
                                                          "assets/heart10.png"))),
                                            ),
                                            Text(
                                              "5 minutes",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 12,
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.5)),
                                            ),
                                            Expanded(child: Container()),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 0),
                                              child: ElevatedButton(
                                                  onPressed: () => {},
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          shadowColor: Colors
                                                              .transparent),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Start  ",
                                                        style: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                color: const Color
                                                                        .fromRGBO(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0.5)),
                                                      ),
                                                      const Image(
                                                          image: AssetImage(
                                                              "assets/chevron.forward.png"))
                                                    ],
                                                  )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
            padding: const EdgeInsets.only(left: 24, bottom: 22),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(3, 158, 162, 1),
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        minimumSize: const Size(0, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      "All",
                      style: GoogleFonts.plusJakartaSans(fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(230, 254, 255, 1),
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        minimumSize: const Size(0, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      "Bible In a Year",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          color: const Color.fromRGBO(3, 158, 162, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(230, 254, 255, 1),
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        minimumSize: const Size(0, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      "Dailies",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          color: const Color.fromRGBO(3, 158, 162, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(230, 254, 255, 1),
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        minimumSize: const Size(0, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      "Minutes",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          color: const Color.fromRGBO(3, 158, 162, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(230, 254, 255, 1),
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        minimumSize: const Size(0, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(
                      "November",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          color: const Color.fromRGBO(3, 158, 162, 1)),
                    ),
                  ),
                ),
              ],
            ),
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
