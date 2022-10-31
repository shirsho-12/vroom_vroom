part of 'nav_bloc.dart';

/// {@template nav_state}
/// NavState description
/// {@endtemplate}
class NavState extends Equatable {
  /// {@macro nav_state}
  const NavState();

  @override
  List<Object> get props => [];
}

/// {@template nav_initial}
/// The initial state of NavState
/// {@endtemplate}
class NavInitial extends NavState {
  /// {@macro nav_initial}
  const NavInitial() : super();
}

class BookAVState extends NavState {
  const BookAVState() : super();
}

class VisitPlaceState extends NavState {
  const VisitPlaceState() : super();
}

class TakePhotoState extends NavState {
  const TakePhotoState() : super();
}

class TakePhotoCompleteState extends NavState {
  const TakePhotoCompleteState() : super();
}

class TellMeAJokeState extends NavState {
  const TellMeAJokeState() : super();
}
