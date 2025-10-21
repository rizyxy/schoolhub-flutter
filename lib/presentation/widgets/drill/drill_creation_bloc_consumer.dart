import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schoolhub_flutter/data/model/topic.dart';
import 'package:schoolhub_flutter/presentation/bloc/drill_creation_bloc/drill_creation_bloc.dart';
import 'package:schoolhub_flutter/presentation/views/drill_page.dart';

class DrillCreationBlocConsumer extends StatelessWidget {
  const DrillCreationBlocConsumer({
    super.key,
    required this.topic,
  });

  final TopicModel topic;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrillCreationBloc, DrillCreationState>(
        listener: (context, state) {
      if (state is DrillCreationError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage ??
                "An error has occured when creating drill")));
      }

      if (state is DrillCreationSuccess) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DrillPage(
                      drill: state.drill,
                    )));
      }
    }, builder: (context, state) {
      return InkWell(
        onTap: () {
          context.read<DrillCreationBloc>().add(CreateDrill(topic: topic));
        },
        child: Ink(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child: Builder(builder: (context) {
              if (state is DrillCreationLoading) {
                return Center(
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator()),
                );
              }

              return Text(
                "Create Drill",
                textAlign: TextAlign.center,
              );
            })),
      );
    });
  }
}
