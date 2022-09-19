import 'package:flutter/material.dart';

import '../config/colors.dart';

class WProfileImage extends StatelessWidget {
  final String url;
  const WProfileImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.white, width: 2),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
