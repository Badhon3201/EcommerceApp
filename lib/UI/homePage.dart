import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_appss/model/car.dart';
import 'package:flutter_appss/model/distination.dart';

var currentCar = carList.cars[0];
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<String> imgList = currentCar.imgList;
  final List<Widget> child = _map<Widget>(imgList, (index, String assetName){
    return Container(
        child: Image.asset("assets/images/$assetName",fit: BoxFit.cover,)
    );
  }).toList();
  static List<T>_map<T>(List list,Function handler){
    List<T> result = [];
    for(var i = 0; i<list.length;i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 400,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  width: 310,
                  color: Colors.white,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom:20.0,
                        child: Container(
                          height: 120,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(' activities'),
                                Text('dkjfc'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){},

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0,2.0),
                              blurRadius: 6.0,
                            ),],
                          ),
                          child: Stack(
                            children: <Widget>[
                              CarouselSlider(
                                height: 350,
                                viewportFraction: 1.0,
                                items: child,
                                onPageChanged: (index){
                                  setState(() {
                                    _current = index;
                                  });
                                },
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _map<Widget>(imgList, (index, assetName){
                return Container(
                  width: 50,
                  height: 2,
                  child: Text('Skip',style: TextStyle(color: Colors.black),),
                  decoration: BoxDecoration(
                    color: _current == index ? Colors.pink[400] : Colors.grey[600],
                  ),
                );
              }),
            ),
          ),
            ],
          ),
      )
    );
  }
}