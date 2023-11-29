import 'package:flutter/material.dart';
import 'package:portfolio/components/headings.dart';
import 'package:portfolio/components/talktiles.dart';
import 'package:portfolio/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            color: charcoal,
            child: Column(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'A Flutter developer who loves to develop mobile apps and websites in Flutter.',
                      style: TextStyle(
                        fontFamily: 'Lacquer',
                        fontSize: 20.0,
                        color: saffron,
                      ),
                    ),
                    Image.asset('assets/images/profilepic.png'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          const Heading(lable: 'My Interests'),
          const SizedBox(height: 30.0,),
          const Heading(lable: 'Tech Talks'),
          const SizedBox(height: 20.0,),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TalkTile(
                  imgPath: 'assets/images/airukamra.jpg',
                  title: 'Getting To Know Flutter',
                  location: 'Air U, Kamra',
                  talkUrl: 'https://www.facebook.com/photo/?fbid=1355197304917077&set=pcb.1355202514916556',
                ),
                TalkTile(
                  imgPath: 'assets/images/devfest20cloud.jpg',
                  title: 'Cloud Seekho',
                  location: 'GDG Cloud Devfest20',
                  talkUrl: 'https://www.youtube.com/watch?v=1jciVUUM-LA',
                ),
                TalkTile(
                  imgPath: 'assets/images/gdgglobal.jpg',
                  title: 'Being Steminist',
                  location: 'GDG Global',
                  talkUrl: 'https://fb.watch/hIfAqPy129/',
                ),
                TalkTile(
                  imgPath: 'assets/images/gdscliveflutter.jpg',
                  title: 'Flutter.py',
                  location: 'GDSC Pakistan',
                  talkUrl: 'https://fb.watch/hIfo957U2N/',
                ),
                TalkTile(
                  imgPath: 'assets/images/gdscpak.jpg',
                  title: 'Become A Community Builder',
                  location: 'GDSC Pakistan',
                  talkUrl: 'https://fb.watch/hIgjiq4P4M/',
                ),
                TalkTile(
                  imgPath: 'assets/images/devfestlive.jpg',
                  title: 'GDSC Panel Discussion',
                  location: 'GDG Live Devfest21',
                  talkUrl: 'https://www.youtube.com/watch?v=FunbfXt38ew',
                ),
                TalkTile(
                  imgPath: 'assets/images/colleen.jpg',
                  title: 'Colleen - A Tech Queen',
                  location: 'GDSC Pakistan',
                  talkUrl: 'https://fb.watch/nqKP5RTAet/',
                ),
                TalkTile(
                  imgPath: 'assets/images/harfanaurat.png',
                  title: 'Harfan Aurat',
                  location: 'GDSC Superior University',
                  talkUrl: 'https://fb.watch/nqKgTvJcCE/',
                ),
                TalkTile(
                  imgPath: 'assets/images/',
                  title: 'What is Flutter?',
                  location: 'Comsats University, Attock',
                  talkUrl: 'https://www.facebook.com/gdsccuiatk/photos/pcb.665110278229428/665109588229497/',
                ),
                TalkTile(
                  imgPath: 'assets/images/techfeb22.jpg',
                  title: 'Flutter Keynote',
                  location: 'Global TechFeb22',
                  talkUrl: 'https://youtu.be/v2G6dHwZhes?t=410',
                ),
                TalkTile(
                    title: 'Next Gen UIs',
                    imgPath: 'assets/images/ffe23.jpg',
                    location: 'Daftarkhawan',
                    talkUrl: 'https://www.facebook.com/photo?fbid=690085339826089&set=pcb.690119189822704'
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          const Heading(lable: 'Let\'s Work Together'),
          const SizedBox(height: 30.0,),
          Container(
            alignment: Alignment.center,
            color: charcoal,
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset('assets/images/logo.png', scale: 50,),
                const SizedBox(height: 10),
                const Text(
                  '2023 \u00a9 Eqra Khattak | All rights reserved | Built with ❤️ by Flutter',
                  style: TextStyle(
                    color: Color(0xFF4C829A),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => launchUrl(Uri.parse('https://www.instagram.com/eqrakhattak')),
                      icon: const FaIcon(FontAwesomeIcons.instagram, color: saffron, size: 30,),
                    ),
                    IconButton(
                      onPressed: () => launchUrl(Uri.parse('https://www.linkedin.com/in/eqrakhattak')),
                      icon: const FaIcon(FontAwesomeIcons.linkedinIn, color: saffron, size: 30,),
                    ),
                    IconButton(
                      onPressed: () => launchUrl(Uri.parse('https://github.com/eqrakhattak')),
                      icon: const FaIcon(FontAwesomeIcons.github, color: saffron, size: 30,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}