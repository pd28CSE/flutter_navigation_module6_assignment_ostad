import 'package:flutter/material.dart';

class BuildListTileItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const BuildListTileItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ListTile(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   side: const BorderSide(
        //     color: Colors.grey,
        //     width: 1,
        //   ),
        // ),
        // tileColor: Colors.grey.shade200,
        leading: const Icon(Icons.photo),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
