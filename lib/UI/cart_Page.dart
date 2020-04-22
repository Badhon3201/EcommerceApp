import 'package:flutter/material.dart';

import 'MainPage.dart';
import 'account_Page.dart';
class cartPage extends StatefulWidget {
  @override
  _cartPageState createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  int _currentTab = 0;
  int currentPage = 0;

  int counter = 0;
  int balance = 900;
  increment()async{
    setState(() {
      this.counter++;
      this.balance++;
    });
  }
  decrement()async{
    setState(() {
      this.counter--;
      this.balance--;
    });
  }
  void main(){
    String s = "\$";
    print('$s');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
            child: Text('Cart',style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
            ),)
        ),
      ),
      
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0,2.0),
                        blurRadius: 6.0,
                      ),],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Hero(
                          tag:'jksa',
                          child: ClipRRect(
                            borderRadius:BorderRadius.circular(10),
                            child: Image(
                              height: 200.0,
                              width: 160.0,
                              image: AssetImage(
                                  'assets/images/p_Camera.jpg'
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Canon D60 Camera',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        SizedBox(height: 10,),
                        Text('Internel 1200 GB',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 15
                        ),),
                        SizedBox(height: 10,),
                        Text('950 Dolar',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                            fontSize: 15
                        ),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              buttonColor: Colors.grey[200],
                              height: 40,
                              minWidth: 50,
                              child: RaisedButton(
                                child: Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                onPressed: (){
                                  this.decrement();
                                },
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text('${counter}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            SizedBox(width: 20,),
                            ButtonTheme(
                              buttonColor: Colors.grey[200],
                              height: 40,
                              minWidth: 50,
                              child: RaisedButton(
                                child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                onPressed: (){
                                  this.increment();
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Total : \$ ${balance}',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                ButtonTheme(
                  buttonColor: Colors.blue[400],
                  height: 40,
                  minWidth: 100,
                  child: RaisedButton(
                    child: Text('Play',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                    onPressed: (){

                    },
                  ),
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
}
