import 'package:flutter/material.dart';
import 'package:portfolio/components/headings.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: ListView(
        children: [
          Row(
            children: [
              Image.asset('assets/images/E3.png', scale: 4,),
              Image.asset('assets/images/Q3.png', scale: 3,),
              Image.asset('assets/images/R2.png', scale: 4,),
              Image.asset('assets/images/A3.png', scale: 4,),
              const SizedBox(width: 40),
              Image.asset('assets/images/K2.png', scale: 4,),
              Image.asset('assets/images/H2.png', scale: 4,),
              Image.asset('assets/images/A5.png', scale: 4,),
              Image.asset('assets/images/T3.png', scale: 4,),
              Image.asset('assets/images/T5.png', scale: 4,),
              Image.asset('assets/images/A4.png', scale: 4,),
              Image.asset('assets/images/K.png', scale: 4,),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.purple[800]!,
                  Colors.grey,
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'A Flutter developer who loves to develop mobile apps and websites in Flutter.',
                  style: TextStyle(
                    fontFamily: 'Lacquer',
                    fontSize: 20.0,
                    color: Colors.grey[300],
                  ),
                ),
                Image.asset('assets/images/mine.png'),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          const Heading(lable: 'My Interests'),
          const SizedBox(height: 30.0,),
          const Heading(lable: 'Tech Talks'),
          const SizedBox(height: 30.0,),
          const Heading(lable: 'Socials'),
          const SizedBox(height: 30.0,),
          Container(
            alignment: Alignment.center,
            color: Colors.purple[800],
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '2022 \u00a9 Eqra Khattak',
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
          ),
        ],
      ),
    );
  }
}