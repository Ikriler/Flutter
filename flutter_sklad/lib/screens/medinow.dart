import 'package:flutter/material.dart';

class Medinow extends StatefulWidget {
  const Medinow({super.key});
  @override
  State<Medinow> createState() => _MedinowState();
}

class _MedinowState extends State<Medinow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 158, 162, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container()),
          const Image(
            image: AssetImage("assets/medinow.png"),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 45),
            child: Text(
              "Meditate With Us!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "PlusJakartaSans"),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text(
                "Sign in with Apple",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "PlusJakartaSans"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(205, 253, 254, 1),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: const Text(
                "Continue with Email or Phone",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "PlusJakartaSans"),
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: const Text(
              "Continue With Google",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PlusJakartaSans"),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 45),
            child: const Image(
              image: AssetImage("assets/medinowChelSidit.png"),
            ),
          ),
        ],
      ),
    );
  }
}
