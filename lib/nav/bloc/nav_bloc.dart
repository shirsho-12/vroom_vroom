import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc(int val) : super(const NavInitial()) {
    on<BookAVEvent>(_onBookAVEvent);
    on<VisitPlaceEvent>(_onVisitPlaceEvent);
    on<TakePhotoEvent>(_onTakePhotoEvent);
    on<TakePhotoCompleteEvent>(_onTakePhotoCompleteEvent);
    on<TellMeAJokeEvent>(_onTellMeAJokeEvent);
    on<PlaceSelectedEvent>(_onPlaceSelectedEvent);
    switch (val) {
      case 0:
        break;
      case 1:
        add(const VisitPlaceEvent());
        break;
      case 2:
        add(const BookAVEvent());
        break;
      case 3:
        add(const TakePhotoEvent());
        break;
      case 4:
        add(const TellMeAJokeEvent());
        break;
    }
  }

  FutureOr<void> _onBookAVEvent(
    BookAVEvent event,
    Emitter<NavState> emit,
  ) {
    emit(const BookAVState());
  }

  FutureOr<void> _onVisitPlaceEvent(
    VisitPlaceEvent event,
    Emitter<NavState> emit,
  ) {
    emit(const VisitPlaceState());
  }

  FutureOr<void> _onTakePhotoEvent(
    TakePhotoEvent event,
    Emitter<NavState> emit,
  ) {
    emit(const TakePhotoState());
  }

  FutureOr<void> _onTakePhotoCompleteEvent(
    TakePhotoCompleteEvent event,
    Emitter<NavState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 3), () {
      emit(const TakePhotoCompleteState());
    });
  }

  FutureOr<void> _onTellMeAJokeEvent(
    TellMeAJokeEvent event,
    Emitter<NavState> emit,
  ) {
    emit(const TellMeAJokeState());
  }

  FutureOr<void> _onPlaceSelectedEvent(
    PlaceSelectedEvent event,
    Emitter<NavState> emit,
  ) {
    emit(const PlaceSelectedState());
  }
}
