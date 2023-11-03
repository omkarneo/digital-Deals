// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

// final class DashboardInitial extends DashboardState {}

class DashboardNavigatorState extends DashboardState {
  Widget tab;
  int index;
  DashboardNavigatorState(this.tab, this.index);
  @override
  List<Object> get props => [tab, index];
}
