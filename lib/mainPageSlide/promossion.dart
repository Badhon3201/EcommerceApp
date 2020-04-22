import 'package:flutter/material.dart';
import 'package:flutter_appss/model/distination.dart';

class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.0,
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destinations.length,
        itemBuilder: (BuildContext context, int index){
      Destination pdestination = destinations[index];
      return Container(
        margin: EdgeInsets.all(10),
        width: 210,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
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
                      tag:pdestination.imageUrl,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(0),
                        child: Image(
                          height: 180.0,
                          width: 180.0,
                          image: AssetImage(
                              pdestination.imageUrl
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      bottom: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(pdestination.city,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5,color: Colors.white),),
                          Text(pdestination.country,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),),
                        ],
                      ),
                    )
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
