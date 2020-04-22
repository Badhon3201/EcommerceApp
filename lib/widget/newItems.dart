import 'package:flutter/material.dart';
import 'package:flutter_appss/model/CameraRecorde.dart';

class newItems extends StatefulWidget {
  @override
  _newItemsState createState() => _newItemsState();
}

class _newItemsState extends State<newItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cmewItems.length,
        itemBuilder: (BuildContext context, int index){
          cNewItem cmewItem = cmewItems[index];
          return Container(
            margin: EdgeInsets.all(10),
            width: 185,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom:10.0,
                  child: Container(
                    height: 160,
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
                          Text('${cmewItem.name}'),
                          Text('${cmewItem.price} dolar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Row(
                            children: <Widget>[
                              Text('4.8',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),),
                              Icon(Icons.star,color: Colors.orange,),
                              Text('480 sale',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          )
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
                          tag:cmewItem,
                          child: ClipRRect(
                            borderRadius:BorderRadius.circular(0),
                            child: Image(
                              height: 220.0,
                              width: 180.0,
                              image: AssetImage(
                                  cmewItem.imageUrl
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  width: 60,
                                  height: 40,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomRight:  Radius.circular(20)),
                                      shape: BoxShape.rectangle,
                                      color: Colors.pink
                                  ),
                                  child: Center(
                                      child: Text('10%',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),)
                                  )
                              ),
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
