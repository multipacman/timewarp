import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class RoundImageNetwork extends StatelessWidget {
  final String imagePath;
  final double size;

  const RoundImageNetwork({
    required Key key,
    required this.imagePath,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imagePath),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(size),
        ),
        color: Colors.black,
      ),
    );
  }
}

class RoundImageFile extends StatelessWidget {
  final PlatformFile image;
  final double size;

  const RoundImageFile({
    required Key key,
    required this.image,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            image.path.toString(),
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(size),
        ),
        color: Colors.black,
      ),
    );
  }
}
