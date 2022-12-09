import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp/cubit/change_theme_cubit.dart';
import 'package:sp/main.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.arguments});

  final Map<String, dynamic> arguments;
  
  @override
  State<StatefulWidget> createState() {
    return Screen2State(arguments);
  }


}

class Screen2State extends State<Screen2> {

  final Map<String, dynamic> arguments;

  Screen2State(this.arguments);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {
          if (state is ThemeState) {
            return MaterialApp(
              theme: ThemeData(brightness: state.brightness),
              home:  ScreenAddon(message: arguments["message"]),
            );
          }
          return MaterialApp(
            theme: ThemeData(brightness: arguments["brightness"]),
            home:  ScreenAddon(message: arguments["message"]),
          );
        },
      ),
    );
  }

}

class ScreenAddon extends StatefulWidget {
  const ScreenAddon({super.key, required this.message});

  final String message;

  @override
  State<ScreenAddon> createState() => ScreenAddonState(message);
}

class ScreenAddonState extends State<ScreenAddon> {

  ScreenAddonState(this.message);

  @override
  void initState() {
    super.initState();
  }

  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    SharedPreferences.getInstance()
                        .then((value) => {value.remove("message")});
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                  child: const Text("Очистить сообщение"))
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SharedPreferences.getInstance().then((value) {
            value.setBool(
                "isDark",
                Theme.of(context).brightness == Brightness.light
                    ? true
                    : false);
          });
          context.read<ChangeThemeCubit>().onClick(
              Theme.of(context).brightness == Brightness.light
                  ? Brightness.light
                  : Brightness.dark);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
