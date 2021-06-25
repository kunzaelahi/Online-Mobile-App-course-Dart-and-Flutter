import 'package:flutter/material.dart';


class Screen extends StatefulWidget {
  const Screen({ Key? key }) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children:[
            SizedBox(height:10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(margin: EdgeInsets.only(left:10,top:10,bottom: 10), child: Text( "Items",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              Container(margin: EdgeInsets.only(right:10,top:10,bottom: 10), child: Text("view more",style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.purple)))],),
         //1st Container




         Container(
           margin: EdgeInsets.all(10),
           decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
          color: Colors.white,
          boxShadow: [BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                    ],
                  ),
           child: Column(children: [
                 Container(height: 190, margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                                borderRadius: BorderRadius.only( topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                  bottomLeft: Radius.circular(10),
                                                  bottomRight: Radius.circular(10)),),
                                                      ),
             Column(children: [
               
             Container( margin: EdgeInsets.only(left:10),alignment: Alignment.centerLeft, child: Text("Note 20 Ultra",style:TextStyle(fontSize:23,fontWeight: FontWeight.bold))),
             Container(margin: EdgeInsets.only(left:10,bottom: 10),
                    child: Row(children: [Icon(Icons.star,color:Colors.yellow,size: 20,),
                                    Icon(Icons.star,color:Colors.yellow,size: 20),
                                    Icon(Icons.star,color:Colors.yellow,size: 20),
                                    Text("5.0 (23 Reviews)" , style: TextStyle(color: Colors.grey,),)],),
             )],)
             
             ],) ,),
        
        
         //1st text
          Container(margin: EdgeInsets.only(left:10,top:10,bottom: 10),alignment: Alignment.centerLeft, child: Text( "More Categories",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25))),
          
          
          
          //2nd Container
         SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Row(
              children: [
               
                  abc("Clothes","5 items"),
                  abc("Clothes","5 items"),
                  abc("Clothes","5 items"),
                  abc("Clothes","5 items"),
                  abc("Clothes","5 items"),
              ],
            ),
          ),

  //2nd text
               SizedBox(height:10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(margin: EdgeInsets.only(left:10,top:10,bottom: 10), child: Text( "Popular Items",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22))),
              Container(margin: EdgeInsets.only(right:10,top:10,bottom: 10), child: Text("view more",style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.purple)))],),
         


          ]
        ),
      ),
    );
  }
}

Widget abc(var t, var s){
  
  return  Container(
                    width: 160,
                    padding: EdgeInsets.all(8),
                     margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
                color: Colors.white,
                boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                          ],
                        ),
                    child: Row(children: [
                      Icon(Icons.electrical_services, color: Colors.purple,),
                      Container(margin: EdgeInsets.only(left:10),alignment: Alignment.centerLeft, child: Column(children: [
                        Text(t,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text(s,style: TextStyle(color: Colors.grey[700],),)],))
                    ],),);
}