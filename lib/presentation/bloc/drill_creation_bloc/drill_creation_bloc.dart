import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schoolhub_flutter/data/model/drill.dart';
import 'package:schoolhub_flutter/data/model/topic.dart';
import 'package:schoolhub_flutter/data/repository/drill_repository.dart';

part 'drill_creation_event.dart';
part 'drill_creation_state.dart';

class DrillCreationBloc extends Bloc<DrillCreationEvent, DrillCreationState> {
  final DrillRepository drillRepository = DrillRepository();

  DrillCreationBloc() : super(DrillCreationInitial()) {
    on<CreateDrill>((event, emit) async {
      emit(DrillCreationLoading());

      try {
        final DrillModel drill =
            await drillRepository.createDrill(event.topic.id);

        emit(DrillCreationSuccess(drill: drill));
      } catch (e) {
        emit(DrillCreationError(errorMessage: e.toString()));
      }
    });
  }
}
