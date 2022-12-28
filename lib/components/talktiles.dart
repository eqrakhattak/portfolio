import 'package:flutter/material.dart';

class TalkTile extends StatelessWidget {

  final String title;
  final String imgPath;
  final String location;

  const TalkTile({required this.title, required this.imgPath, required this.location});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[600],
      child: InkWell(
        splashColor: Colors.purple[800]!.withAlpha(30),
        onTap: (){
          print('card tapped');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(imgPath, scale: 5,),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      Text(location),
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
