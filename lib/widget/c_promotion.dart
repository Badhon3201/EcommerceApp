import 'package:flutter/material.dart';
import 'package:flutter_appss/UI/c_PromotionScreen.dart';
import 'package:flutter_appss/model/CameraRecorde.dart';
import 'package:flutter_appss/model/CameraRecorde.dart' as prefix1;
import 'package:flutter_appss/model/distination.dart';
import 'package:flutter_appss/model/distination.dart' as prefix0;
class cPromotion extends StatefulWidget {
  @override
  _cPromotionState createState() => _cPromotionState();
}

class _cPromotionState extends State<cPromotion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: prefix0.activities.length,
        itemBuilder: (BuildContext context, int index){
          CCamera activity = prefix1.activities[index];
          return Container(
            margin: EdgeInsets.all(10),
            width: 150,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_)=>c_PromotionScreen(
                          activity : activity,
                        )
                      )
                    );
                  },

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
                          tag:activity.imageUrl,
                          child: ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image(
                              height: 160.0,
                              width: 150.0,
                              image: AssetImage(
                                  activity.imageUrl
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(activity.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5,color: Colors.white),),
                              Text(activity.discription,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),),
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
