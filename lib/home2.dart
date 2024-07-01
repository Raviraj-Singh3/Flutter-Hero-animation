import 'package:flutter/material.dart';
import 'package:hero_animation/photo.dart';
import 'package:hero_animation/radial_expansion.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home 2"),
      ),
      body: RadialExpansion(
        maxRadius: 100,
        child: Photo(photo: "bird.jpg"),
      ),
    );
  }
}
