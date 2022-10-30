part of 'drop_off_bloc.dart';

/// {@template drop_off_state}
/// DropOffState description
/// {@endtemplate}
class DropOffState extends Equatable {
  /// {@macro drop_off_state}
  const DropOffState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current DropOffState with property changes
  DropOffState copyWith({
    String? customProperty,
  }) {
    return DropOffState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template drop_off_initial}
/// The initial state of DropOffState
/// {@endtemplate}
class DropOffInitial extends DropOffState {
  /// {@macro drop_off_initial}
  const DropOffInitial() : super();
}
