import 'package:flutter/material.dart';

class BuildItem extends StatelessWidget {
  final String imageCaption;
  const BuildItem({super.key, required this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 115,
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg',
          ),
        ),
      ),
      child: Container(
        height: 40,
        width: 70,
        alignment: Alignment.center,
        color: Colors.black38,
        child: Text(
          imageCaption,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
