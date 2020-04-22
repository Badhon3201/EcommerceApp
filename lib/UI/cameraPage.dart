import 'package:flutter/material.dart';
import 'package:flutter_appss/UI/searchDialoge.dart';
import 'package:flutter_appss/widget/cPopular.dart';
import 'package:flutter_appss/widget/cPromotionWidget.dart';
import 'package:flutter_appss/widget/c_promotion.dart';
import 'package:flutter_appss/widget/newItems.dart';
class cameraPage extends StatefulWidget {
  @override
  _cameraPageState createState() => _cameraPageState();
}

class _cameraPageState extends State<cameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>searchDialoge()));
            },
            child: Icon(Icons.search,size: 30,color: Colors.blue[400],),)
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            'Camera',style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text('Week Promotion',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 8,),
              Container(
                  child: cPromotion(),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20,left: 20),
                          child: Text('Sub Category',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20,left: 0,right: 20),
                          child: Text('See All',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey[300],Colors.grey[200]]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight: 36,
                                  minWidth: 118
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Action',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey[300],Colors.grey[200]]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight: 36,
                                  minWidth: 118
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Degital',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey[300],Colors.grey[200]]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight: 36,
                                  minWidth: 118
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Anolog',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey[300],Colors.grey[200]]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight: 36,
                                  minWidth: 118
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Drone',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey[300],Colors.grey[200]]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight: 36,
                                  minWidth: 118
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'HandyCam',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey[300],Colors.grey[200]]
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(80.0))
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxHeight: 36,
                                  minWidth: 118
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'CCTV',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //cPromotionWidget(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20,left: 20),
                          child: Text('Item Discount',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20,left: 0,right: 20),
                          child: Text('See All',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    cPromotionWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 0,left: 20),
                          child: Text('Popular Item',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0,left: 0,right: 20),
                          child: Text('See All',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    cPopularWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 0,left: 20),
                          child: Text('New Items',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 0,left: 0,right: 20),
                          child: Text('See All',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    newItems(),
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}
