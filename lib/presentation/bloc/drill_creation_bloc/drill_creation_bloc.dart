import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schoolhub_flutter/data/model/topic.dart';

part 'drill_creation_event.dart';
part 'drill_creation_state.dart';

class DrillCreationBloc extends Bloc<DrillCreationEvent, DrillCreationState> {
  DrillCreationBloc() : super(DrillCreationInitial()) {
    on<CreateDrill>((event, emit) async {
      emit(DrillCreationLoading());

      try {
        await Future.delayed(Duration(seconds: 2));

        emit(DrillCreationSuccess());
      } catch (e) {
        emit(DrillCreationError(errorMessage: e.toString()));
      }
    });
  }
}
