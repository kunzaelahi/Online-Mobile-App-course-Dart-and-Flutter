import 'package:flutter/material.dart';

import 'index.dart';
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         color: Color(0xff80E1D1),
         
        child: Container(
          width: 400,
           margin: EdgeInsets.only(top:60),
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(30),topEnd: Radius.circular(30)),
              ),
child: Column(
  children: [

    Align( alignment: Alignment.topLeft, child: IconButton(    icon: Icon(Icons.cancel),    color: Color(0xff80E1D1),    highlightColor: Colors.white,    hoverColor: Colors.white,    focusColor: Colors.white,    splashColor: Colors.yellow,    disabledColor: Colors.amber,    iconSize: 40,    onPressed: () {   Navigator.pop(context);      },  )),

     Center(
                child: CircleAvatar(
                  radius:70,
                  backgroundColor: Color(0xff80E1D1),
                  child: Text("Login", style : TextStyle(fontWeight: FontWeight.bold, color: Colors.white , fontSize: 50, fontStyle: FontStyle.italic))
                ),
              ),

SizedBox(height: 50,),
    Container(
      width: 300,
      height: 45,
      child: TextField(
        
  decoration: InputDecoration(
       prefixIcon: new Icon(Icons.person, color: Color(0xff80E1D1) ,),
      focusedBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(30),
        
                    borderSide: BorderSide(color: Color(0xff80E1D1), width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color:Color(0xff80E1D1), width: 1.5),
                  ),
 // labelText: 'labelText',
                hintText: 'Enter User name',
                hintStyle: TextStyle( color: Color(0xff80E1D1)),
                
  ),
),
    ),



SizedBox(height: 5,),
    Container(
      width: 300,
      height: 45,
      child: TextField(
        
  decoration: InputDecoration(
       prefixIcon: new Icon(Icons.password, color: Color(0xff80E1D1) , ),
      focusedBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(30),
        
                    borderSide: BorderSide(color: Color(0xff80E1D1), width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color:Color(0xff80E1D1), width: 1.5),
                  ),
 // labelText: 'labelText',
                hintText: 'Password',
                hintStyle: TextStyle( color: Color(0xff80E1D1)),
                
  ),
),
    ),




SizedBox(height: 50,),
Container(
  width: 300,
  height: 45,
  
  child:   OutlinedButton( 
  style: OutlinedButton.styleFrom(
  
      shape: StadiumBorder(),
  backgroundColor: Color(0xff80E1D1) ,
      primary: Colors.white,
  
      shadowColor: Colors.grey,
      elevation: 10,
      side: BorderSide(
  
        width: 1,
  
        color: Color(0xff80E1D1),
   ),
  ),
    onPressed: () {  Navigator.push( context,
    MaterialPageRoute(builder: (context) => Index()),
  ); },child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),)
  
  ),
),







  ],
),


        ),
      ),
    );
  }
}