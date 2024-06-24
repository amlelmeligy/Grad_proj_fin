
import 'package:flutter/material.dart';
import 'package:graduation/Cache/local_network.dart';
import 'package:graduation/presentation/aya/widget/homescreen/articles_widget.dart';
import 'package:graduation/presentation/aya/widget/homescreen/bar_chart.dart';
import 'package:graduation/presentation/aya/widget/homescreen/sick_widget.dart';

import '../../pageroute/Setting/settings_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 250,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Hello ,',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                       Text(
                        'Dr /${CacheNetwork.getCacheData(key: 'name')}',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 66, 102)),
                      ),
                    ],
                  ),
                   CircleAvatar(backgroundImage: SettingsCubit.get(context).DocDetails['photo']!=null?NetworkImage(SettingsCubit.get(context).DocDetails['photo'].toString())
                     :NetworkImage('https://th.bing.com/th/id/R.9c213f70d66f833eb40f7cc3e907d724?rik=X9mHpfM3hPTvmA&pid=ImgRaw&r=0'),)

                ],
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: const [SickWidget(), BarChart(), ArticlesWidget()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
