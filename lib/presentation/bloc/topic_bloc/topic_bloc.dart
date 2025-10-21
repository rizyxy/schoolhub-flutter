import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schoolhub_flutter/data/model/subject.dart';
import 'package:schoolhub_flutter/data/model/topic.dart';
import 'package:schoolhub_flutter/data/repository/topic_repository.dart';

part 'topic_event.dart';
part 'topic_state.dart';

class TopicBloc extends Bloc<TopicEvent, TopicState> {
  final TopicRepository topicRepository = TopicRepository();

  TopicBloc() : super(TopicInitial()) {
    on<FetchTopics>((event, emit) async {
      emit(TopicLoading());

      try {
        List<TopicModel> topics =
            await topicRepository.fetchTopics(event.subject.id);

        emit(TopicSuccess(topics: topics));
      } catch (e) {
        emit(TopicError(errorMessage: e.toString()));
      }
    });
  }
}
