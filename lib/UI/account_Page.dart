import 'package:flutter/material.dart';

import 'MainPage.dart';
import 'cart_Page.dart';
class accountPage extends StatefulWidget {
  @override
  _accountPageState createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  int _currentTab = 0;
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    _buildBackgroundCover(),
                    _buildGrettings(),
                    _buildMoodsHolder(),
                    SizedBox(height: 60,),
                  ],
                ),
                SizedBox(height: 30,),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Md. Manik Hossain',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(height: 5,),
                          Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.notifications,size: 30,),
                              SizedBox(width: 40,),
                              Text('Notifications',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.chat,size: 30,),
                              SizedBox(width: 40,),
                              Text('Message',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.payment,size: 30,),
                              SizedBox(width: 40,),
                              Text('Paymant',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.directions_bus,size: 30,),
                              SizedBox(width: 40,),
                              Text('My Order',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.settings,size: 30,),
                              SizedBox(width: 40,),
                              Text('Settings Account',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.headset_mic,size: 30,),
                              SizedBox(width: 40,),
                              Text('Call Center',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.apps,size: 30,),
                              SizedBox(width: 40,),
                              Text('Abouts App',style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Icon(Icons.home,
                  size: 30,),
              ),
              title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
            //title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cartPage()));
                },
                child: Icon(Icons.shopping_cart,
                    size: 30,),
              ),
              //title: SizedBox.shrink(),
              title: Text('Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>accountPage()));
                },
                child: Icon(Icons.account_box,
                  size: 30,),
              ),
              title: Text('Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
            //title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
  _buildBackgroundCover() {
    return Container(
      height: 260,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black,Colors.purple,Colors.black]
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )

      ),
    );
  }

  _buildGrettings() {
    return Positioned(
      bottom: 90,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Hi   Manik',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),),
          SizedBox(height: 10,),
          Text('How Are Feelings Today',style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300
          ),)
        ],
      ),
    );
  }
  _buildMoodsHolder(){
    return Positioned(
      bottom: -45,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(90),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 5.5,
                  blurRadius: 5.5
              )
            ]
        ),
        child: ListView(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/DSC_0164.jpg'),
              radius: 50,
            ),
          ],
        ),
      ),
    );
  }
}
