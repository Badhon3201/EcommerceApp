import 'package:flutter/material.dart';
import 'package:flutter_appss/mainPageSlide/slideModel.dart';

class mainSlide extends StatefulWidget {
  final int index;
  mainSlide({this.index});

  @override
  _mainSlideState createState() => _mainSlideState();
}

class _mainSlideState extends State<mainSlide> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 380,
          height: 150,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(slideList[widget.index].imgUrl),
                  fit: BoxFit.cover
              )
          ),
        ),
      ],
    );
  }
}
