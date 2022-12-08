import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());

  void onClick(Brightness brightness) {
    emit(ThemeState(brightness == Brightness.dark ? Brightness.light : Brightness.dark));
  }

}
