import 'package:flutter/material.dart';
import 'package:graduation/presentation/aya/widget/homescreen/block/articles_widget_block.dart';

class ArticlesWidget extends StatefulWidget {
  const ArticlesWidget({super.key});

  @override
  State<ArticlesWidget> createState() => _ArticlesWidgetState();
}

class _ArticlesWidgetState extends State<ArticlesWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Articles',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          ArticlesWidgetBlock()
        ],
      ),
    );
  }
}
