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
    return SizedBox(
      width: 430,
      child: Card(
        color: persianGreen,
        child: InkWell(
          splashColor: Colors.cyan[900]!.withAlpha(30),
          onTap: (){
            launchUrl(Uri.parse(talkUrl));
          },
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                  child: Image.asset(imgPath, fit: BoxFit.fill),
                ),
                const SizedBox(height: 8.0),
                Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on_outlined, color: charcoal),
                        Text(
                          location,
                          style: const TextStyle(
                            color: Colors.white,
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
      ),
    );
  }
}
