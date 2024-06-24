import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/presentation/aml/home/custom.dart';
import 'package:graduation/presentation/aml/tasks/Tasks_Cubit/tasks_cubit.dart';
import 'package:lottie/lottie.dart';
import 'package:table_calendar/table_calendar.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

DateTime today = DateTime.now();

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "Your Favourite",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              backgroundColor: const Color.fromRGBO(210, 219, 220, 0.612),
            ),
            body: state is TasksFavLOADING
                ?const Center(child: CircularProgressIndicator())

                : favouriteTasks(context: context));
      },
    );
  }
}
