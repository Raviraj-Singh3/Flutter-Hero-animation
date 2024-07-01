import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hero_animation/photo_hero.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topLeft,
        child: PhotoHero(
          photo: 'bird.jpg',
          width: 100.0,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Flippers Page'),
                ),
                body: Center(
                  child: PhotoHero(
                    photo: 'bird.jpg',
                    width: 300.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}
