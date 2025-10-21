part of 'drill_creation_bloc.dart';

sealed class DrillCreationEvent extends Equatable {
  const DrillCreationEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class CreateDrill extends DrillCreationEvent {
  final TopicModel topic;

  const CreateDrill({required this.topic});

  @override
  List<Object?> get props => [topic];
}
