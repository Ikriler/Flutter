import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp/cubit/change_theme_cubit.dart';
import 'package:sp/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences? sharedPreferences;

  Brightness currentBrightness = Brightness.light;

  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    initShared().then((value) {
      setState(() {
        if (sharedPreferences!.getBool("isDark") != null &&
            sharedPreferences!.getBool("isDark") as bool) {
          currentBrightness = Brightness.dark;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {
          if (state is ThemeState) {
            return MaterialApp(
              theme: ThemeData(brightness: state.brightness),
              home: const MyHomePage(),
            );
          }
          return MaterialApp(
            theme: ThemeData(brightness: currentBrightness),
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = new TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  SharedPreferences? sharedPreferences;

  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    initShared().then((value) {
      setState(() {
        if (sharedPreferences!.getString("message") != null &&
            sharedPreferences!.getString("message") != "") {
          String? message = sharedPreferences!.getString("message");
          Brightness brightness = Brightness.light;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Screen2(
                        arguments: {
                          "message": message,
                          "brightness": Theme.of(context).brightness
                        },
                      )));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
                key: formKey,
                child: TextFormField(
                  controller: textEditingController,
                  validator: ((value) {
                    if (value == "" || value == null) {
                      return "Сообщение не должно быть пустым";
                    }
                  }),
                )),
            ElevatedButton(
                onPressed: () {
                  if (!formKey.currentState!.validate()) return;
                  sharedPreferences!
                      .setString("message", textEditingController.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Screen2(
                                arguments: {
                                  "message":
                                      sharedPreferences!.getString("message"),
                                  "brightness": Theme.of(context).brightness
                                },
                              )));
                },
                child: Text("Переход"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (Theme.of(context).brightness == Brightness.light) {
            sharedPreferences!.setBool("isDark", true);
          } else {
            sharedPreferences!.setBool("isDark", false);
          }
          context
              .read<ChangeThemeCubit>()
              .onClick(Theme.of(context).brightness);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
