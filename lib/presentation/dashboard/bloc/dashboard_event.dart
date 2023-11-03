// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardEvent extends Equatable {
  const DashboardEvent();

  @override
  List<Object> get props => [];
}

class DashBoardNavigatorEvent extends DashboardEvent {
  dynamic navigatorIndex;
  DashBoardNavigatorEvent(this.navigatorIndex);
  @override
  List<Object> get props => [navigatorIndex];
}
