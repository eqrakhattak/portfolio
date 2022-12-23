import 'package:flutter/material.dart';


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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
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
            Column(
              children: [
                const Text(
                  'A Flutter developer who loves to develop mobile apps and websites in Flutter.',
                ),
                Text(
                  'counter2022',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.purple[800],
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '2022 \u00a9 Eqra Khattak',
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}