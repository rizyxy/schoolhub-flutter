import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schoolhub_flutter/data/model/subject.dart';
import 'package:schoolhub_flutter/data/repository/subject_repository.dart';

part 'subject_state.dart';
part 'subject_event.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final SubjectRepository _subjectRepository = SubjectRepository();

  SubjectBloc() : super(SubjectInitial()) {
    on<FetchSubjects>((event, emit) async {
      emit(SubjectLoading());
      try {
        List<SubjectModel> subjects = await _subjectRepository.fetchSubjects();

        emit(SubjectSuccess(subjects: subjects));
      } catch (e) {
        emit(SubjectError(errorMessage: e.toString()));
      }
    });
  }
}
