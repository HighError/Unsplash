import 'package:flutter/material.dart';
import 'package:qulisoft/classes/photo.dart';
import 'package:qulisoft/widgets/lazy_load_photo_widget.dart';

class PhotoCardWidget extends StatelessWidget {
  final Photo photo;

  const PhotoCardWidget({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LazyLoadPhotoWidget(url: photo.urls!.small ?? ""),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(photo.user!.name ?? "",
                style: const TextStyle(fontSize: 22)),
          ),
        ],
      ),
    );
  }
}
