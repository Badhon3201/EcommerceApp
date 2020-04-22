import 'package:flutter/material.dart';
import 'package:flutter_appss/model/distination.dart';
class favourites extends StatefulWidget {
  @override
  _favouritesState createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: activities.length,
        itemBuilder: (BuildContext context, int index){
          Activity destination = activities[index];
          return Container(
            margin: EdgeInsets.all(10),
            width: 190,
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
                          Text('${destination.name}'),
                          Text('${destination.price} dolar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
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
                        Hero(
                          tag:destination.imageUrl,
                          child: ClipRRect(
                            borderRadius:BorderRadius.circular(0),
                            child: Image(
                              height: 180.0,
                              width: 180.0,
                              image: AssetImage(
                                  destination.imageUrl
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
