import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const Card({ Key? key }) : super(key: key);

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              Container(
         height: 120,
                    margin: EdgeInsets.all(10),
                    child:Row(children:  [
                        
                   
                    Container(
                      height: 140,
                      width:120,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN8Hh_tgODJjbT4azyTSs6rK0XMnZOF7LczA&usqp=CAU'),
                        fit: BoxFit.cover,
                        ),
                        ),
                        ),

Column(children:[
  Container(
      margin: EdgeInsets.all(10),
      child:Column(children:[
      Text("Iphone 12",style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.bold ,fontSize: 20,) ,),
      SizedBox(height:4,),
      Row(children: [Container(child: Icon(Icons.star,size:20,color:Colors.yellow,),),
      Text("5.0 (23 Reviews)",style: TextStyle(fontSize: 15,color:Colors.grey ,fontFamily: "Arial",),),
      ],),

SizedBox(height:3,),
      Row(children: [ 
        
      Text("20 piceses ",style: TextStyle(fontSize: 15,color:Colors.grey ,fontFamily: "Arial",),),
      Text(" \$90",style: TextStyle(fontSize: 20,color:Colors.purple,fontFamily: "Arial",),)
      ],),


Text("Quality:1",style: TextStyle(fontSize: 15,color:Colors.grey ,fontFamily: "Arial",),)
  ],),),
]),


                  ],
                  ),
                  
                  

      ),


Container(
         height: 120,
                    margin: EdgeInsets.all(10),
                    child:Row(children:  [
                        
                   
                    Container(
                      height: 140,
                      width:120,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN8Hh_tgODJjbT4azyTSs6rK0XMnZOF7LczA&usqp=CAU'),
                        fit: BoxFit.cover,
                        ),
                        ),
                        ),

Column(children:[
  Container(
      margin: EdgeInsets.all(10),
      child:Column(children:[
      Text("Iphone 12",style: TextStyle(fontFamily: "Arial",fontWeight: FontWeight.bold ,fontSize: 20,) ,),
      SizedBox(height:4,),
      Row(children: [Container(child: Icon(Icons.star,size:20,color:Colors.yellow,),),
      Text("5.0 (23 Reviews)",style: TextStyle(fontSize: 15,color:Colors.grey ,fontFamily: "Arial",),),
      ],),

SizedBox(height:3,),
      Row(children: [ 
        
      Text("20 piceses ",style: TextStyle(fontSize: 15,color:Colors.grey ,fontFamily: "Arial",),),
      Text(" \$90",style: TextStyle(fontSize: 20,color:Colors.purple,fontFamily: "Arial",),)
      ],),


Text("Quality:1",style: TextStyle(fontSize: 15,color:Colors.grey ,fontFamily: "Arial",),)
  ],),),
]),


                  ],
                  ),
                  
                  

      ),



            ],
          ),
    );
  }
}









