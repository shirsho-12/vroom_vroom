part of 'nav_bloc.dart';

abstract class NavEvent {
  const NavEvent();
}

/// {@template custom_nav_event}
/// Event added when some custom logic happens
/// {@endtemplate}

class BookAVEvent extends NavEvent {
  const BookAVEvent() : super();
}

class VisitPlaceEvent extends NavEvent {
  const VisitPlaceEvent() : super();
}

class PlaceSelectedEvent extends NavEvent {
  const PlaceSelectedEvent() : super();
}

class TakePhotoEvent extends NavEvent {
  const TakePhotoEvent() : super();
}

class TakePhotoCompleteEvent extends NavEvent {
  const TakePhotoCompleteEvent() : super();
}

class TellMeAJokeEvent extends NavEvent {
  const TellMeAJokeEvent() : super();
}
