part of 'drop_off_bloc.dart';

abstract class DropOffEvent {
  const DropOffEvent();
}

/// {@template custom_drop_off_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomDropOffEvent extends DropOffEvent {}
