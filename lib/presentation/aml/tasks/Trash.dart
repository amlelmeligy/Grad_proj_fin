import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/presentation/aml/home/custom.dart';
import 'package:graduation/presentation/aml/tasks/Tasks_Cubit/tasks_cubit.dart';
import 'package:lottie/lottie.dart';
import 'package:table_calendar/table_calendar.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

DateTime today = DateTime.now();

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "Your Trash",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              backgroundColor: const Color.fromRGBO(210, 219, 220, 0.612),
            ),
            body: state is TasksTrashLOADING
                ? const Center(child: CircularProgressIndicator())

                : TrashTasks(context: context));
      },
    );
  }
}
