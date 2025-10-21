part of 'drill_creation_bloc.dart';

sealed class DrillCreationState extends Equatable {
  const DrillCreationState();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class DrillCreationInitial extends DrillCreationState {}

class DrillCreationLoading extends DrillCreationState {}

class DrillCreationSuccess extends DrillCreationState {
  final DrillModel drill;

  const DrillCreationSuccess({required this.drill});

  @override
  List<Object?> get props => [drill];
}

class DrillCreationError extends DrillCreationState {
  final String? errorMessage;

  const DrillCreationError({this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
