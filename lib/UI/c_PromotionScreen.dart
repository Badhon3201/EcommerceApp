import 'package:flutter/material.dart';
import 'package:flutter_appss/model/CameraRecorde.dart';

class c_PromotionScreen extends StatefulWidget {
  final CCamera activity;
  c_PromotionScreen({this.activity});
  @override
  _c_PromotionScreenState createState() => _c_PromotionScreenState();
}

class _c_PromotionScreenState extends State<c_PromotionScreen> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.black,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            Text('Product Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),),
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              iconSize: 30,
              color: Colors.black,
              onPressed: (){

              },
            ),
          ],
        )
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height*0.4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow:[
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0,2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Hero(
                        tag: widget.activity.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image(
                            image: AssetImage(widget.activity.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.activity.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1.5,color: Colors.white),),
                          Text(widget.activity.discription,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        icon: Icon(Icons.location_on,color: Colors.white,),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.purple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.flash_auto,color: Colors.white,),
                          SizedBox(width: 15,),
                          Text('Flash Sale',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),)
                        ],
                      ),
                      Text('9 Available',style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(widget.activity.name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('\$ ${widget.activity.price}',style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: (){},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.purple,Colors.pink]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                          ),

                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            child: Text('4.1  *',style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Details Product',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('2.0 inch Ultra HD screen',style: TextStyle(fontSize: 18,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Vehicle-mounted recording',style: TextStyle(fontSize: 18,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Recorded in MOV format',style: TextStyle(fontSize: 18,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Multiple video recording formats: 1080P 720P WVGA',style: TextStyle(fontSize: 18,),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Description',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(widget.activity.discription,style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Row(
          children: <Widget>[
            Container(
              width: 86,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.shopping_cart, color: Colors.yellow[900]), Text("Cart", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))],
              ),
            ),
            Container(
              width: 86,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.chat, color: Colors.blue), Text("Chat", style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black))],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text("Play", style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
