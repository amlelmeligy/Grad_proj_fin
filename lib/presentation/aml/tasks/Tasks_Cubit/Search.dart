import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/presentation/aml/home/custom.dart';
import 'package:graduation/presentation/aml/tasks/Tasks_Cubit/tasks_cubit.dart';
import 'package:lottie/lottie.dart';
import 'package:table_calendar/table_calendar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

DateTime today = DateTime.now();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "Your Search",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              backgroundColor: const Color.fromRGBO(210, 219, 220, 0.612),
            ),
            body:  Column(children: [
              SizedBox(height: 15,),
              Container(
                width: 350,
                height: 45,
                child: TextField(
                  onChanged: (value) {
                    TasksCubit.get(context).getSearchTasks(search: value);
                  },

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    labelText: "Search  ",
                    fillColor: Color.fromRGBO(239, 241, 241, 0.965),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),

              TasksCubit.get(context).searchTasks.isNotEmpty?
              Expanded(child: SearchTasks(context: context))

                  : Center(child: Lottie.asset('assets/images/loading.json',height: 250,width: double.infinity))

            ],) );
      },
    );
  }
}
