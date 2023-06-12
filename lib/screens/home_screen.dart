import 'package:flutter/material.dart';

import '../widgets/build_item.dart';
import '../widgets/build_listtile_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              alignment: Alignment.center,
              child: const Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Photos',
                  label: Text('Search'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.spaceAround,
              runSpacing: 10,
              spacing: 10,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                  ),
                  onPressed: () {
                    _biuldSnackbar(
                        context: context, snackBarContent: 'Clicked on photo!');
                  },
                  child: const BuildItem(imageCaption: 'Flower 1'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                  ),
                  onPressed: () {
                    _biuldSnackbar(
                        context: context, snackBarContent: 'Clicked on photo!');
                  },
                  child: const BuildItem(imageCaption: 'Flower 2'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                  ),
                  onPressed: () {
                    _biuldSnackbar(
                        context: context, snackBarContent: 'Clicked on photo!');
                  },
                  child: const BuildItem(imageCaption: 'Flower 3'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                  ),
                  onPressed: () {
                    _biuldSnackbar(
                        context: context, snackBarContent: 'Clicked on photo!');
                  },
                  child: const BuildItem(imageCaption: 'Flower 4'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                  ),
                  onPressed: () {
                    _biuldSnackbar(
                        context: context, snackBarContent: 'Clicked on photo!');
                  },
                  child: const BuildItem(imageCaption: 'Flower 5'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                  ),
                  onPressed: () {
                    _biuldSnackbar(
                        context: context, snackBarContent: 'Clicked on photo!');
                  },
                  child: const BuildItem(imageCaption: 'Flower 6'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: const [
                BuildListTileItem(title: 'Photo 1', subtitle: 'Category 1'),
                BuildListTileItem(title: 'Photo 2', subtitle: 'Category 2'),
                BuildListTileItem(title: 'Photo 3', subtitle: 'Category 3'),
                BuildListTileItem(title: 'Photo 4', subtitle: 'Category 3'),
                BuildListTileItem(title: 'Photo 5', subtitle: 'Category 4'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _biuldSnackbar(
              context: context,
              snackBarContent: 'Photos Uploaded Successfully!');
        },
        child: const Icon(Icons.cloud_upload),
      ),
    );
  }

  void _biuldSnackbar(
      {required BuildContext context, required String snackBarContent}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackBarContent),
      ),
    );
  }
}
