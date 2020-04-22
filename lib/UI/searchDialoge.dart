import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appss/widget/favourites.dart';
import 'package:flutter_appss/widget/suggessionSearch.dart';

class searchDialoge extends StatefulWidget {
  @override
  _searchDialogeState createState() => _searchDialogeState();
}

class _searchDialogeState extends State<searchDialoge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text('Search',style: TextStyle(
            color: Colors.grey,
          ),),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 120 ),
              child: Text('Hello, I am Triva. What would you like to search ?',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 30,right: 30),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                color: Colors.white,
                offset: Offset(0.0,2.0),
                blurRadius: 6.0,
              ),],
                border: Border.all(
                    color: Colors.grey,
                    width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                    hintText: 'Find you want',hintStyle: TextStyle(fontSize: 20),
                    border: InputBorder.none,
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 10),
                    child: Text('Populer Keyword',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 20,),
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
                                  colors: [Colors.grey[300],Colors.grey[500]]
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
                              'IphoneX',
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
                                  colors: [Colors.grey[300],Colors.grey[500]]
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
                              'IphoneX',
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
                                  colors: [Colors.grey[300],Colors.grey[500]]
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
                              'IphoneX',
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
                                  colors: [Colors.grey[300],Colors.grey[500]]
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
                              'IphoneX',
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
                                  colors: [Colors.grey[300],Colors.grey[500]]
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
                              'IphoneX',
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
                                  colors: [Colors.grey[300],Colors.grey[500]]
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
                              'IphoneX',
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
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('Favourite',style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 20,),
                  favourites(),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}