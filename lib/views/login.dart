import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key : _formKey,
          child: SafeArea(
              child :Stack(
                children: [
                  Image(
                    image: AssetImage("assets/image/Background.png"),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    children: [
                      Image(
                        width: 1000,
                        height: 200,
                        image: AssetImage("assets/image/metro-logo.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 100 , left: 50 , right: 50 ),
                        child: Column(
                            children: [
                              TextFormField(
                                validator: (value){
                                  if(value==null || value.isEmpty)
                                    {
                                      return 'Enter Email please ';
                                    }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: Colors.red,width: 2)),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: Colors.red)),
                                  hintText: '    Email',
                                  suffixIcon: Icon(Icons.email,),
                                  filled: true,
                                  fillColor: Colors.white,
                                  // icon: Icon(Icons.email),

                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: TextFormField(
                                  validator: (value){
                                    if(value==null || value.isEmpty)
                                    {
                                      return 'Enter Password please ';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: Colors.red,width: 2)),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide(color: Colors.red)),
                                    hintText: '    Password',
                                    suffixIcon: Icon(Icons.lock,),
                                    filled: true,
                                    fillColor: Colors.white,
                                    // icon: Icon(Icons.email),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: ButtonTheme(
                                  minWidth: 270,
                                  height: 50,
                                  child: RaisedButton(
                                    onPressed: (){
                                      if(_formKey.currentState.validate())
                                        {
                                            _formKey.currentState.save();
                                        }
                                    },
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    color: Colors.red,
                                    textColor: Colors.white,
                                    child: Text('Login',style: TextStyle(color: Colors.white , fontSize: 25 ,fontStyle: FontStyle.italic),),

                                  ),
                                ),
                              ),
                              TextButton(onPressed: null, child: Text('Forget Password?',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.blueGrey  ))),
                              Row(
                                children : [
                                  Expanded(child: Divider(height: 76,thickness: 1,color: Colors.blueGrey,)),
                                  Text(' Or Login With ',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.italic),),
                                  Expanded(child: Divider(height: 76 ,thickness: 1,color: Colors.blueGrey,))
                                ],
                              ),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Row(
                            children:[
                              TextButton(
                                child: Image(
                                  image: AssetImage("assets/image/facebook-logo.png"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:20),
                                child: TextButton(
                                  child: Image(
                                    image: AssetImage("assets/image/google-logo.png"),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100,top: 50),
                        child: Row(
                            children:[
                              Text("Don't have an account? ",style: TextStyle(fontStyle: FontStyle.italic , color: Colors.blueGrey,fontWeight: FontWeight.w500),),
                              TextButton(onPressed: null, child: Text('Sign Up',style: TextStyle(color: Colors.white , fontStyle: FontStyle.italic ,fontWeight:  FontWeight.w900 ),))
                            ]
                        ),
                      )
                    ],
                  ),
                ],
              )
          )
      ),
    );
  }
}
