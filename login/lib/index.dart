import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/details.dart';

import 'home.dart';


class Index extends StatefulWidget {
  const Index({ Key? key }) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(
        drawerScrimColor: Colors.grey,
        drawer: Drawer(
          child: ListView(children: [

            Container(
               color:Color(0xff80E1D1),
              child: DrawerHeader(
                 duration: Duration(milliseconds: 250),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                   CircleAvatar(
                      radius:32,
                     backgroundColor: Colors.white,
                     child: Text("K", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 40,color:Color(0xff80E1D1)))
                    ),
                  
                  ListTile(
                      title: Text("Kunza", style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold,fontSize: 18, fontFamily: 'arial'),),
                      subtitle: Text("Kunzaelahi@gmail.com", style: TextStyle(color:Colors.white,fontWeight:FontWeight.normal, fontFamily: 'arial'),),
                  )
                ],),
              )),
           
           
            ListTile(
              leading: Icon(Icons.message, color:Color(0xff80E1D1),),
              title:Text("Message", style: TextStyle(color:Color(0xff80E1D1),fontSize: 18, fontFamily: 'arial'),), onTap: (){},
            ),

             ListTile(
              leading: Icon(Icons.account_circle ,color:Color(0xff80E1D1),),
              title:Text("Account", style: TextStyle(color:Color(0xff80E1D1),fontSize: 18),), onTap: (){},
            ),

             ListTile(
              leading: Icon(Icons.settings,color:Color(0xff80E1D1),),
              title:Text("Settings", style: TextStyle(color:Color(0xff80E1D1),fontSize: 18),), onTap: (){},
            ),
        // Divider(height: 10,thickness: 2,),
            ListTile(
              leading: Icon(Icons.change_history ,color:Color(0xff80E1D1),),
              title:Text("Back", style: TextStyle(color:Color(0xff80E1D1),fontSize: 18),), onTap: (){ Navigator.pop(context);},
            ),
SizedBox(height: 190,),
            
Container(
  margin: EdgeInsets.only(right:17),
  alignment: Alignment.bottomRight,
  child:   FloatingActionButton(
  
      
  
      backgroundColor:Color(0xff80E1D1),
  
      onPressed:(){
  
      Navigator.push( 
  
        context,MaterialPageRoute(builder: (context) => Home()
  
        ),);
  
        },child: Icon(Icons.logout ,color:Colors.white,),),
)


  ],
          ),
          
        ),







          appBar: AppBar(
            
             title: Text("Hello Appbar ", style: TextStyle(fontFamily: 'arial',fontWeight: FontWeight.bold),),
             backgroundColor: Color(0xff80E1D1),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
              Tab(child: Text("Card",style:TextStyle(fontWeight:FontWeight.bold)),),
              Tab(child: Text("Details",style:TextStyle(fontWeight:FontWeight.bold)), )
            ]),

actions: <Widget>[
  Padding(
    padding: EdgeInsets.only(right: 20.0),
    child:GestureDetector(
              onTap: () {},
              child: Icon(Icons.search,)
              ), 
  ),

 Padding(
    padding: EdgeInsets.only(right: 20.0),
    child:GestureDetector(
              onTap: () {

              },
              child: Icon(Icons.more_vert,)
              ), 
  ),

],


          ),

body: TabBarView(children: [
  Card(),
  Details(),
]),
      ),
    );
  }
}