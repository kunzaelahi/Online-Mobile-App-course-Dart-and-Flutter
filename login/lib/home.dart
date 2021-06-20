import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
            decoration: BoxDecoration(color: Colors.white,),

            child: Center(
              child: Container(

              decoration: BoxDecoration(
                color: Color(0xff80E1D1),
                borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(200)),
                ),
          child: Center(
              child: Column(
                children: [
                  
                  SizedBox(height: 100,),
                  
                  Center(
                    child: CircleAvatar(
                      radius:70,
                      backgroundColor: Colors.white,
                      child: Text("Go", style : TextStyle(fontWeight: FontWeight.bold, color: Color(0xff80E1D1) , fontSize: 90, fontStyle: FontStyle.italic))
                    ),
                  ),
       
       
        Container(
              width: 190,
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                    radius:27,
                    backgroundColor: Colors.white,
                      ),
                      ),
  
SizedBox(height: 10,),

              Container(
                        width: 100,
                        alignment: Alignment.centerRight,
                        child: CircleAvatar(
                              radius:12,
                              backgroundColor: Colors.white,
                ),
              ),


SizedBox(height: 50,),
Container(
  width: 260,
  height: 45,
  
  child:   OutlinedButton( 
  style: OutlinedButton.styleFrom(
  
      shape: StadiumBorder(),
   backgroundColor: Colors.white ,
      primary: Colors.white,
  
      shadowColor: Colors.grey,
      elevation: 10,
      side: BorderSide(
  
        width: 1,
  
        color: Colors.white,
   ),
  ),
    onPressed: (){
      Navigator.push( context,
    MaterialPageRoute(builder: (context) => Login()),
  );
    } ,child: Text('Login', style: TextStyle(color: Color(0xff80E1D1) , fontSize: 20,fontWeight: FontWeight.bold),)
  
  ),
),



SizedBox(height: 10,),
Container(
  width: 260,
  height: 45,
  
  child:   OutlinedButton( 
  style: OutlinedButton.styleFrom(
  
      shape: StadiumBorder(),
  
      primary: Colors.white,
  backgroundColor: Colors.white ,
      shadowColor: Colors.grey,
      elevation: 10,
      side: BorderSide(
  
        width: 1,
  
        color: Colors.white,
   ),
  ),
    onPressed: () { 
       Navigator.push( context,
    MaterialPageRoute(builder: (context) => Register()),
  );
     },child: Text('Register', style: TextStyle(color: Color(0xff80E1D1) , fontSize: 20,fontWeight: FontWeight.bold),)
  
  ),
),


                ],
              ),
          ),
        ),
            ),
      ) ,   
    );
  }
}