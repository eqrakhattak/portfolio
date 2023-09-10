import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class TalkTile extends StatelessWidget {

  final String title;
  final String imgPath;
  final String location;
  final String talkUrl;

  const TalkTile({
    super.key,
    required this.title,
    required this.imgPath,
    required this.location,
    required this.talkUrl
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: sandyBrown,
      child: InkWell(
        splashColor: Colors.purple[800]!.withAlpha(30),
        onTap: (){
          launchUrl(Uri.parse(talkUrl));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(imgPath, scale: 5,),
              const SizedBox(height: 8.0),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: charcoal,
                      fontSize: 20
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, color: charcoal,),
                      Text(
                        location,
                        style: const TextStyle(
                          color: charcoal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
