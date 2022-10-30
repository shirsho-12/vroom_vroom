part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

/// {@template custom_home_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomHomeEvent extends HomeEvent {}
