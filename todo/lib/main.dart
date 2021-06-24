import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        
        body: 
          //  color: Color(0xff00579C),
          // child: Container(
          //     margin: EdgeInsets.only(top:120),
          //      decoration: BoxDecoration(
          //       color: Colors.white,
          //      borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(30),topEnd: Radius.circular(30)),
          //   ),
           
           Home()
      ) ,
    );
  }
}




class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 
var output='';
var otput='';
var ot='';
 List<dynamic> colorCodes = [100, 200, 300,400,500,600,700];
  List<dynamic> lst=["Hassaan","Izhan","Hunza"];
  List<dynamic> lt=[1,2,3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar:  AppBar(
    
    
    title: Center(child: Text("Todo App",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
  

  ),

      
   body:     
 ListView.builder(
                itemCount: lst.length,
                itemBuilder:(context,index){
                return Container(
                  
                   
                  height: 60,
                 color: Colors.grey[colorCodes[index]],
                  margin: EdgeInsets.only(top:15),
                  child: ListTile(
                    leading: CircleAvatar(radius:20,backgroundColor: Colors.blue,child: Text("L",style:TextStyle(color: Colors.white,fontSize:17,fontWeight: FontWeight.bold)),),
                    title: Text("${lst[index]}", style: TextStyle(fontSize:17)),
                     subtitle: Text("${lt[index]}", style: TextStyle(fontSize:14)),
                    trailing: Container(

                      width: 50,
                      child: Row(
                        children: [
                           GestureDetector(onTap: (){
                            
                                 showDialog(context: context, builder:(context){
                  return SimpleDialog(
                    title:Text("Edit Item"),
                    children:[ Container(
                     margin: EdgeInsets.only(left:50,right:50),
                      child: TextField(
                         decoration: InputDecoration(hintText: 'Name',),
                        onChanged:(value){
                          output=value;
                        }
                      ),
                    ),
                    Container(
                     margin: EdgeInsets.only(left:50,right:50),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Number',),
                        onChanged:(value){
                          otput=value;
                        }
                      ),
                    ),
                   
                     Container(
                       margin: EdgeInsets.only(left:50,right:50,top:20),
                                            child: ElevatedButton(onPressed: (){
                          setState(() {
                            lst.replaceRange(index, index+1, {output});
                            lt.replaceRange(index, index+1, {otput});
                            
                          });
                           Navigator.of(context).pop();
                        }, child: Text("Edit")),
                     )
                    ],
                    
                  );
                }
                );



                          },child: Icon(Icons.edit)),
                          GestureDetector(onTap: (){
                            setState(() {
                              lst.removeAt(index);
                            });
                          },child: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
  
      
        
 floatingActionButton : FloatingActionButton
                      (
              backgroundColor: Color(0xff36A1E2),
              onPressed: (){
               
                showDialog(context: context, builder:(context){
                  return SimpleDialog(
                    title:Text(" Item"),
                    children:[ Container(
                     margin: EdgeInsets.only(left:50,right:50),
                      child: TextField(
                         decoration: InputDecoration(hintText: 'Name',),
                        onChanged:(value){
                          output=value;
                        }
                      ),
                    ),
                    Container(
                     margin: EdgeInsets.only(left:50,right:50),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Number',),
                        onChanged:(value){
                          otput=value;
                        }
                      ),
                    ),
                  
                     Container(
                       margin: EdgeInsets.only(left:50,right:50,top:20),
                                            child: ElevatedButton(onPressed: (){
                          setState(() {
                            lst.add(output);
                            lt.add(otput);
                           

                          });
                           Navigator.of(context).pop();
                        }, child: Text("Add")),
                     )
                    ],
                    
                  );





                }
                );
              },child:Icon(Icons.add) ,), 
         
           
    );
  }
   
}




