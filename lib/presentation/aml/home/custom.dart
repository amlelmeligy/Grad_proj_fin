import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:graduation/presentation/aml/tasks/Tasks_Cubit/tasks_cubit.dart';

class CustomListtile extends StatelessWidget {
  final String name;
  final String sub;
  final String date;

  // final image;
  const CustomListtile({
    super.key,
    required this.name,
    required this.sub,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text(
                "$name",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              subtitle: Text(
                "$sub",
                style: const TextStyle(fontSize: 12),
              ),
              trailing: Text(
                "$date",
              ),
            )),
            Container(
              child: const Icon(Icons.arrow_right),
            )
          ],
        ));
  }
}

Widget HomeTasks({required context}) => ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => SwipeActionCell(
        backgroundColor: Colors.transparent,
        key: ObjectKey(TasksCubit.get(context).AllTasks[index]),
        trailingActions: <SwipeAction>[
          SwipeAction(
              backgroundRadius: 20,
              title: "delete",
              onTap: (CompletionHandler handler) async {
                TasksCubit.get(context).deleteTask(
                    id: TasksCubit.get(context).AllTasks[index]['id']);

                await handler(true);
              },
              color: Colors.red),
          SwipeAction(
              backgroundRadius: 20,
              title: "done",
              onTap: (CompletionHandler handler) async {
                TasksCubit.get(context).deleteTask(
                    id: TasksCubit.get(context).AllTasks[index]['id']);

                await handler(true);
              },
              color: Colors.green),

        ],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(176, 202, 205, 100),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text(
                      "${TasksCubit.get(context).AllTasks[index]['title']}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    subtitle: Text(
                      "${TasksCubit.get(context).AllTasks[index]['purpose']}",
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      "From ${TasksCubit.get(context).AllTasks[index]['start_time']} To ${TasksCubit.get(context).AllTasks[index]['end_time']}",
                      style: const TextStyle(fontSize: 7),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
      itemCount: TasksCubit.get(context).AllTasks.length,
      separatorBuilder: (context, index) => const Divider(),
    );
Widget AllTasks({required context}) => ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => SwipeActionCell(
        backgroundColor: Colors.transparent,
        key: ObjectKey(TasksCubit.get(context).AllTasks[index]),
        trailingActions: <SwipeAction>[
          SwipeAction(
              backgroundRadius: 20,
              title: "delete",
              onTap: (CompletionHandler handler) async {
                TasksCubit.get(context).deleteTask(
                    id: TasksCubit.get(context).AllTasks[index]['id']);

                await handler(true);
              },
              color: Colors.red),
          SwipeAction(
              backgroundRadius: 20,
              title: "done",
              onTap: (CompletionHandler handler) async {
                TasksCubit.get(context).deleteTask(
                    id: TasksCubit.get(context).AllTasks[index]['id']);

                await handler(true);
              },
              color: Colors.green),
        ],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(176, 202, 205, 100),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text(
                      "${TasksCubit.get(context).AllTasks[index]['title']}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    subtitle: Text(
                      "${TasksCubit.get(context).AllTasks[index]['purpose']}",
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      "From ${TasksCubit.get(context).AllTasks[index]['start_time']} To ${TasksCubit.get(context).AllTasks[index]['end_time']}",
                      style: const TextStyle(fontSize: 7),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
      itemCount: TasksCubit.get(context).AllTasks.length,
      separatorBuilder: (context, index) => const Divider(),
    );

Widget favouriteTasks({required context}) => ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(176, 202, 205, 100),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  "${TasksCubit.get(context).FavTasks[index]['title']}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 19),
                ),
                subtitle: Text(
                  "${TasksCubit.get(context).FavTasks[index]['purpose']}",
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Text(
                  "From ${TasksCubit.get(context).FavTasks[index]['start_time']} To ${TasksCubit.get(context).FavTasks[index]['end_time']}",
                  style: const TextStyle(fontSize: 7),
                ),
              ),
            )),
          ],
        ),
      ),
      itemCount: TasksCubit.get(context).FavTasks.length,
      separatorBuilder: (context, index) => const Divider(),
    );
Widget TrashTasks({required context}) => ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(176, 202, 205, 100),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  "${TasksCubit.get(context).TrashTasks[index]['title']}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 19),
                ),
                subtitle: Text(
                  "${TasksCubit.get(context).TrashTasks[index]['purpose']}",
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Text(
                  "From ${TasksCubit.get(context).TrashTasks[index]['start_time']} To ${TasksCubit.get(context).TrashTasks[index]['end_time']}",
                  style: const TextStyle(fontSize: 7),
                ),
              ),
            )),
          ],
        ),
      ),
      itemCount: TasksCubit.get(context).TrashTasks.length,
      separatorBuilder: (context, index) => const Divider(),
    );
Widget HiddenTasks({required context}) => ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(176, 202, 205, 100),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  "${TasksCubit.get(context).HideTasks[index]['title']}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 19),
                ),
                subtitle: Text(
                  "${TasksCubit.get(context).HideTasks[index]['purpose']}",
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Text(
                  "From ${TasksCubit.get(context).HideTasks[index]['start_time']} To ${TasksCubit.get(context).HideTasks[index]['end_time']}",
                  style: const TextStyle(fontSize: 7),
                ),
              ),
            )),
          ],
        ),
      ),
      itemCount: TasksCubit.get(context).HideTasks.length,
      separatorBuilder: (context, index) => const Divider(),
    );
Widget SearchTasks({required context}) => ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(176, 202, 205, 100),
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                title: Text(
                  "${TasksCubit.get(context).searchTasks[index]['title']}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 19),
                ),
                subtitle: Text(
                  "${TasksCubit.get(context).searchTasks[index]['purpose']}",
                  style: const TextStyle(fontSize: 12),
                ),
                trailing: Text(
                  "From ${TasksCubit.get(context).searchTasks[index]['start_time']} To ${TasksCubit.get(context).searchTasks[index]['end_time']}",
                  style: const TextStyle(fontSize: 7),
                ),
              ),
            )),
          ],
        ),
      ),
      itemCount: TasksCubit.get(context).FavTasks.length,
      separatorBuilder: (context, index) => const Divider(),
    );
