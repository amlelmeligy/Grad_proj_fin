import 'package:flutter/material.dart';

class ArticlesWidgetBlock extends StatefulWidget {
  const ArticlesWidgetBlock({super.key});

  @override
  State<ArticlesWidgetBlock> createState() => _ArticlesWidgetBlockState();
}

class _ArticlesWidgetBlockState extends State<ArticlesWidgetBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  'How Sunlight, the Immune System, and Covid-19 Interact',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'For thousands of years, humans have recognized that the sun plays a role in the emergence and transmission of viruses',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_1.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  '3 Hobbies That Can Improve Your Memory',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'For thousands of years, humans have recognized that the sun plays a role in the emergence and transmission of viruses',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_2.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  'How Sunlight, the Immune System, and Covid-19 Interact',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'For thousands of years, humans have recognized that the sun plays a role in the emergence and transmission of viruses',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_1.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  '3 Hobbies That Can Improve Your Memory',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'For thousands of years, humans have recognized that the sun plays a role in the emergence and transmission of viruses',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_2.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  'The Science Behind Improving Your Immune System',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Today i will talk about that science about your immune system that nobody ever talk about',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_3.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  '4 Habits Everyone Needs for Better Mental Health',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'You are what you habitually do',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_4.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  'The Science Behind Improving Your Immune System',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Today i will talk about that science about your immune system that nobody ever talk about',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_3.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: const Color.fromARGB(104, 255, 255, 238),
          child: const ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 7.0),
                    child: Row(
                      children: [
                        Text(
                          'Markham Heid',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 0, 176, 182)),
                        ),
                        Text(
                          ' . 10 min read . 20 Nov',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0,
                              color: Color.fromARGB(255, 173, 173, 173)),
                        )
                      ],
                    )),
                Text(
                  '4 Habits Everyone Needs for Better Mental Health',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                )
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'You are what you habitually do',
                style: TextStyle(
                    fontSize: 9.75, color: Color.fromARGB(216, 158, 158, 158)),
              ),
            ),
            trailing: ClipOval(
              child: Image(
                image: AssetImage('assets/images/sick_4.jpg'),
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
