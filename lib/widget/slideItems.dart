import 'package:flutter_appss/model/slideItems.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatefulWidget {
  final int index;
  SlideItem({this.index});

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage(slideList[widget.index].imgUrl),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(height: 20,),
        Text(slideList[widget.index].title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text(slideList[widget.index].description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey
            ),),
        ),
      ],
    );
  }
}
