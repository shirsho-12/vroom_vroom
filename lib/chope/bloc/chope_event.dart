part of 'chope_bloc.dart';

abstract class ChopeEvent {
  const ChopeEvent();
}

/// {@template custom_chope_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomChopeEvent extends ChopeEvent {}
