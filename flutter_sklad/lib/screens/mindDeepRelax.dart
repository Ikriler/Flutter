import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MindDeepRelax extends StatefulWidget {
  const MindDeepRelax({super.key});

  @override
  State<MindDeepRelax> createState() => _MindDeepRelaxState();
}

class _MindDeepRelaxState extends State<MindDeepRelax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(24, 34, 24, 14),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 201, 76, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Image(
                  image: AssetImage("assets/chelStoitSmotrit.png"))),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Peter Mach",
              style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontFamily: "PlusJakartaSans",
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 5, 0, 4),
            child: Text(
              "Mind Deep Relax",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: "PlusJakartaSans",
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(24, 5, 28, 10),
            child: Text(
              "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(30, 30, 30, 1),
                  height: 1.3,
                  fontFamily: "PlusJakartaSans",
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(14),
                  backgroundColor: const Color.fromRGBO(3, 158, 162, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Image(image: AssetImage("assets/play.png")),
                  ),
                  Text(
                    "Play Next Session",
                    style: TextStyle(
                        fontFamily: "PlusJakartaSans",
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 24, 33, 0),
            padding: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(217, 217, 217, 0.5), width: 1))),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 42, height: 42),
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.zero),
                      child: const Image(image: AssetImage("assets/play.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Sweet Memories",
                        style: TextStyle(
                          fontFamily: "PlusJakartaSans",
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "December 29 Pre-Launch",
                        style: TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                    onTap: () => {},
                    child: Stack(
                      children: const [
                        Text(".",
                            style: TextStyle(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              fontSize: 60,
                              letterSpacing: 0,
                              height: 0.1,
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 9),
                          child: Text(".",
                              style: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 60,
                                letterSpacing: 0,
                                height: 0.1,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(".",
                              style: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 60,
                                letterSpacing: 0,
                                height: 0.1,
                              )),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 16, 33, 0),
            padding: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(217, 217, 217, 0.5), width: 1))),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 42, height: 42),
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.zero,
                          backgroundColor:
                              const Color.fromRGBO(3, 158, 162, 1)),
                      child: const Image(image: AssetImage("assets/play.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "A Day Dream",
                        style: TextStyle(
                          fontFamily: "PlusJakartaSans",
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "December 29 Pre-Launch",
                        style: TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                    onTap: () => {},
                    child: Stack(
                      children: const [
                        Text(".",
                            style: TextStyle(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              fontSize: 60,
                              letterSpacing: 0,
                              height: 0.1,
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 9),
                          child: Text(".",
                              style: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 60,
                                letterSpacing: 0,
                                height: 0.1,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(".",
                              style: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 60,
                                letterSpacing: 0,
                                height: 0.1,
                              )),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(24, 16, 33, 0),
            padding: const EdgeInsets.only(bottom: 15),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(217, 217, 217, 0.5), width: 1))),
            child: Row(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 42, height: 42),
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.zero,
                          backgroundColor:
                              const Color.fromRGBO(240, 146, 53, 1)),
                      child: const Image(image: AssetImage("assets/play.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Mind Explore",
                        style: TextStyle(
                          fontFamily: "PlusJakartaSans",
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "December 29 Pre-Launch",
                        style: TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                    onTap: () => {},
                    child: Stack(
                      children: const [
                        Text(".",
                            style: TextStyle(
                              color: Color.fromRGBO(217, 217, 217, 1),
                              fontSize: 60,
                              letterSpacing: 0,
                              height: 0.1,
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 9),
                          child: Text(".",
                              style: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 60,
                                letterSpacing: 0,
                                height: 0.1,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(".",
                              style: TextStyle(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                fontSize: 60,
                                letterSpacing: 0,
                                height: 0.1,
                              )),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
