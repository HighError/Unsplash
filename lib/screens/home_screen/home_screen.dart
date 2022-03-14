import 'package:flutter/material.dart';
import 'package:qulisoft/classes/photo.dart';
import 'package:qulisoft/classes/response.dart';
import 'package:qulisoft/modules/unsplash.dart';
import 'package:qulisoft/screens/photo_screen/photo_screen.dart';
import 'package:qulisoft/widgets/photo_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Photo> photo = [];

  @override
  void initState() {
    super.initState();
    if (Response.statusCode != 200) {
      Unsplash.fetchRandomPhotos().then((value) => setState(() {}));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (Response.statusCode == 0) {
      return const Scaffold(body: SafeArea(child: Text("Loading...")));
    }
    if (Response.statusCode != 200) {
      return Scaffold(
        body: SafeArea(
          child: Text(
              "${Response.statusCode}: ${Response.errorMessage}. Please try later or restart app!"),
        ),
      );
    }
    return Scaffold(
      body: ListView.builder(
        itemCount: Response.photos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: PhotoCardWidget(photo: Response.photos[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PhotoScreen(photo: Response.photos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
