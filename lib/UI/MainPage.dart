import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appss/UI/searchDialoge.dart';
import 'package:flutter_appss/mainPageSlide/promossion.dart';
import 'package:flutter_appss/mainPageSlide/slide.dart';
import 'package:flutter_appss/model/iconCard.dart';
import 'package:flutter_appss/model/slideItems.dart';
import 'package:flutter_appss/widget/slideItems.dart';
import 'package:flutter_appss/widget/slide_dot.dart';
import 'dart:async';
import 'account_Page.dart';
import 'cameraPage.dart';
import 'cart_Page.dart';
class HomePage extends StatefulWidget {
  final int index;
  HomePage({this.index});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _listIndex = 0;
  int _currentTab = 0;
  int currentPage = 0;
  final PageController _pageController = PageController(
      initialPage: 0
  );
  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer){
      if(currentPage<2){
        currentPage++;
      }else{
        currentPage = 0;
      }

      _pageController.animateToPage(
          currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn
      );
    });
  }
  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index){
    setState(() {
      currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 50,
          margin: EdgeInsets.only(left: 20,top: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: TextField(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>searchDialoge()));
            },
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              prefix: Icon(Icons.search,color: Colors.black,)
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Icon(Icons.chat,color: Colors.blue,),
          ),
          GestureDetector(child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications,color: Colors.blue,),
          ))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top:10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: <Widget>[
                    PageView.builder(
                      onPageChanged: _onPageChange,
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: slideList.length,
                      itemBuilder: (context,i)=>mainSlide(index: i,) //Slide(index: i,),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 130),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i = 0; i<slideList.length; i++)
                                if( i == currentPage)
                                  SlideDot(true)
                                else
                                  SlideDot(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                child: ListView(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Text('Menu',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.camera_alt),
                                  Text("Camera")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.fastfood),
                                  Text("Food")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.mobile_screen_share),
                                  Text("Handphone")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.games),
                                  Text("Gaming")
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.person),
                                  Text("Fashion")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.child_care),
                                  Text("Helthcare")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.computer),
                                  Text("Computer")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.equalizer),
                                  Text("Equipment")
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.brightness_5),
                                  Text("Atomatic")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.palette),
                                  Text("Sports")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.card_giftcard),
                                  Text("TicketClima")
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>cameraPage())),
                              },
                              color: Colors.blue[100],
                              padding: EdgeInsets.all(10.0),
                              child: Column( // Replace with a Row for horizontal icon + text
                                children: <Widget>[
                                  Icon(Icons.book),
                                  Text("Books")
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Text('Week Promotion',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),),
                        ),
                        SizedBox(height: 10,),
                        Promotions(),
                      ],
                    )
                  ],
                )
              )
            ],
          ),
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
}