// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../favpage/favpage.dart';
import '../../homepage/homepage.dart';
import '../../profilepage/profilepage.dart';
import '../../searchpage/searchpage.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  List<Widget> tab = [
    const HomePage(),
    const SearchPage(),
    const FavPage(),
    const ProfilePage()
  ];
  DashboardBloc() : super(DashboardNavigatorState(const HomePage(), 0)) {
    on<DashBoardNavigatorEvent>((event, emit) {
      emit(DashboardNavigatorState(
          tab[event.navigatorIndex], event.navigatorIndex));
    });
  }
}
