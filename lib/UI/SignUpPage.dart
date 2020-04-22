import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'MainPage.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage("assets/images/signup.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/images/logo.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Daily Shop',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:25,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 3.0
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 100,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            buildTextField("Email"),
                            SizedBox(height: 10.0,),
                            buildTextField("Password"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Have an account?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          FlatButton(
                            child: Text('Login',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
                            onPressed: (){},
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: FlatButton(
                          child: Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white),),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          padding: EdgeInsets.all(15),
                          color: Theme.of(context).primaryColor,
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()),);
                          },
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),

        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/logo.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Daily Shop',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 40,),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildTextField("Email"),
                    SizedBox(height: 20.0,),
                    buildTextField("Password"),
                  ],
                ),
              )
            ],
          ),*/
      ),
    );
  }

  Widget buildTextField(String hintText){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
            shadows: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2.0,1.0),
              )
            ]
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
          suffixIcon: hintText == "Password" ? IconButton(
            onPressed: _toggleVisibility,
            icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          ) : null,
        ),
        obscureText: hintText == "Password" ? _isHidden : false,
      ),
    );
  }
}