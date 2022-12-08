import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp/cubit/change_theme_cubit.dart';
import 'package:sp/main.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.arguments});

  final Map<String, dynamic> arguments;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {

          Brightness brightness = arguments["brightness"];
          if(state is ThemeState) {
            brightness = state.brightness;
          }

          return MaterialApp(
            theme: ThemeData(brightness: brightness),
            home: Scaffold(
              body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(arguments["message"] != null ? arguments["message"] : ""),
                      ElevatedButton(
                          onPressed: () {
                            SharedPreferences.getInstance()
                                .then((value) => {value.remove("message")});
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyApp()));
                          },
                          child: const Text("Очистить сообщение"))
                    ],
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  SharedPreferences.getInstance().then((value) {
                    value.setBool("isDark", Theme.of(context).brightness == Brightness.light ? true : false);
                  });
                  context
                      .read<ChangeThemeCubit>()
                      .onClick(Theme.of(context).brightness);
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          );
        },
      ),
    );
  }
}
