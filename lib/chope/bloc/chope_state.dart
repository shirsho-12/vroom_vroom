part of 'chope_bloc.dart';

/// {@template chope_state}
/// ChopeState description
/// {@endtemplate}
class ChopeState extends Equatable {
  /// {@macro chope_state}
  const ChopeState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current ChopeState with property changes
  ChopeState copyWith({
    String? customProperty,
  }) {
    return ChopeState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template chope_initial}
/// The initial state of ChopeState
/// {@endtemplate}
class ChopeInitial extends ChopeState {
  /// {@macro chope_initial}
  const ChopeInitial() : super();
}
