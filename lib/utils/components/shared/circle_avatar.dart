
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({Key? key, this.imageRadius=20.0, this.imageProvider}) : super(key: key);

  final double imageRadius ;
  final ImageProvider? imageProvider ;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius-5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
