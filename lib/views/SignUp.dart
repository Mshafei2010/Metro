import 'package:flutter/material.dart';
import 'package:metro/views/login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'assets/image/Background.png',
                fit: BoxFit.cover, height: double.infinity, width: double.infinity, alignment: Alignment.center,
              ),

              Container(
                child: Column(
                  children: [

                    SizedBox (height: 15,),

                    Image.asset('assets/image/metro-logo.png'),

                    SizedBox (height: 17,),

                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color:Color.fromRGBO(139,0,0,1)),

                        ) ,

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(139,0,0,1),
                              width: 2.0,
                            )
                        ),
                        suffixIcon: Icon(
                          Icons.perm_identity,
                          color: Colors.black45,
                        ),

                        hintText: 'Full Name',
                        hintStyle: TextStyle(color: Colors.black45, fontStyle: FontStyle.italic),
                      ),
                    ),

                    SizedBox (height: 15,),


                    TextFormField(

                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(139,0,0,1),
                              width: 2.0,
                            )
                        ),

                        suffixIcon: Icon(
                          Icons.email,
                          //color: Colors.black45,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(139,0,0,1),
                            )
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black45, fontStyle: FontStyle.italic),
                      ),
                    ),

                    SizedBox (height: 15,),

                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(139,0,0,1),
                              width: 2.0,
                            )
                        ),

                        suffixIcon: Icon(
                          Icons.lock,
                          //color: Colors.black45,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(139,0,0,1),
                            )
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black45, fontStyle: FontStyle.italic),

                      ),

                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: FlatButton(
                        padding:EdgeInsets.only(left: 5.0, right: 5.0,bottom:7.0, top:7.0),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                        onPressed:() => Null ,
                        color: Color.fromRGBO(139,0,0,1),

                        child: Center(
                          child: Text(
                            'Sign UP',
                            style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 35,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            endIndent: 10,
                            indent: 35,
                            thickness:2,
                            color: Colors.white38,
                            height: 10,
                          ),
                        ),
                        Text(
                          "Or Sign Up With",
                          style: TextStyle(
                            fontSize: 12,color: Colors.white30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,),
                        ),
                        Expanded(
                          child: Divider(
                            endIndent: 10,
                            indent: 35,
                            thickness:2,
                            color: Colors.white38,
                            height: 10,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: ()=> Null,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          child: Image.asset('assets/image/facebook-logo.png'),
                        ),
                        FlatButton(
                          onPressed: ()=> Null,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                          child: Image.asset('assets/image/google-logo.png'),
                        ),
                      ],
                    ),

                    SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold,color: Colors.white30
                          ),
                        ),
                        FlatButton(
                          onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>login())),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],

          ),

        ),
      ),
    );
  }
}