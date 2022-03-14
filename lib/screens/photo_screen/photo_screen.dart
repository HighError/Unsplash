import 'package:flutter/material.dart';
import 'package:qulisoft/widgets/lazy_load_photo_widget.dart';

import '../../classes/photo.dart';

class PhotoScreen extends StatelessWidget {
  final Photo photo;

  const PhotoScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LazyLoadPhotoWidget(url: photo.urls!.full ?? ""),
      ),
    );
  }
}
