import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'chope_event.dart';
part 'chope_state.dart';

class ChopeBloc extends Bloc<ChopeEvent, ChopeState> {
  ChopeBloc() : super(const ChopeInitial()) {
    on<CustomChopeEvent>(_onCustomChopeEvent);
  }

  FutureOr<void> _onCustomChopeEvent(
    CustomChopeEvent event,
    Emitter<ChopeState> emit,
  ) {
    // TODO: Add Logic
  }
}
