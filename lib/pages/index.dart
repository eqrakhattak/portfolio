import 'package:flutter/material.dart';
import 'package:portfolio/components/headings.dart';
import 'package:portfolio/components/talktiles.dart';


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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TalkTile(imgPath: 'assets/images/airukamra.jpg', title: 'Getting To Know Flutter', location: 'Air U Kamra',),
              TalkTile(imgPath: 'assets/images/devfest20cloud.jpg', title: 'Cloud Seekho', location: 'GDG Cloud Devfest20',),
              TalkTile(imgPath: 'assets/images/gdgglobal.jpg', title: 'Being Steminist', location: 'GDG Global',),
              TalkTile(imgPath: 'assets/images/gdscliveflutter.jpg', title: 'Flutter.py', location: 'GDSC Pakistan',),
              TalkTile(imgPath: 'assets/images/gdscpak.jpg', title: 'Become A Community Builder', location: 'GDSC Pakistan',),
              TalkTile(imgPath: 'assets/images/devfestlive.jpg', title: 'GDSC Panel Discussion', location: 'GDG Live Devfest21',),
            ],
          ),
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
