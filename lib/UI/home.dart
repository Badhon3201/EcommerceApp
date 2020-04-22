import 'dart:async';
import 'package:flutter_appss/model/slideItems.dart';
import 'package:flutter_appss/widget/slideItems.dart';
import 'package:flutter_appss/widget/slide_dot.dart';
import 'package:flutter/material.dart';

import 'SignUpPage.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      onPageChanged: _onPageChange,
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: slideList.length,
                      itemBuilder: (context,i)=>SlideItem(index: i,),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 35),
                          child: Row(
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
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    child: Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()),);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an account?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      FlatButton(
                        child: Text('Login',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                        onPressed: (){},
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
