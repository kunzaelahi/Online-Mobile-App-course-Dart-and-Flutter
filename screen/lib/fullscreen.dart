import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen extends StatefulWidget {
  const Screen({ Key? key }) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
 
final List<dynamic> gridnamelist=['Vivo V21','Galaxy A32','Vivo V21','Galaxy A32','Vivo V21','Galaxy A32','iPhone 11','Oppo Reno 5','Reno 2F',' Macbook Air','MacBook Pro','Infinix Hot 10','Galaxy A32'];
final List<dynamic> slidernamelist=['Reno 2F',' Macbook Air','MacBook Pro','Infinix Hot 10',];
 final List<dynamic> imagelist=[
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
  
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
  
];
final List<dynamic> imagelst=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwUjfLP61SZvH4unpbgzZICNelZqct1gGQYA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTS14ek7SlMYt3Doi2alNFALUKe82zXwgZvg&usqp=CAU',
  

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
                  child: Column(
            children: [

                  SizedBox(height:10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(margin: EdgeInsets.only(left:10,top:10,bottom: 10), child: Text( "Items",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
              Container(margin: EdgeInsets.only(right:10,top:10,bottom: 10), child: Text("view more",style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.purple)))],),
         


              CarouselSlider( 
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true, 
                ),
                items: imagelist.map((e)=>ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: abc(e, slidernamelist[0]),
     )).toList(),
                ),


 Container(
   margin: EdgeInsets.only(left:10,top:10,bottom: 10),
   alignment: Alignment.centerLeft, 
   child: Text( "More Categories",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25))),
          


                SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                                child: Row(
                    children: [
                      abcd("Clothes",Icons.local_drink),
                      abcd("Electronics",Icons.bolt),
                      abcd("House Hold",Icons.house_siding_sharp),
                      abcd("Appliances",Icons.bolt),
                      abcd("Other Items",Icons.double_arrow),
                    ],
                  ),
                ),


 SizedBox(height:10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(margin: EdgeInsets.only(left:10,top:10,bottom: 10), child: Text( "Popular Items",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22))),
              Container(margin: EdgeInsets.only(right:10,top:10,bottom: 10), child: Text("view more",style:TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.purple)))],),
         

                  GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                children: List.generate(imagelst.length, (index) {
                  return  Card(child: Stack(children: [
                Image.network(imagelst[index], width:1000,height:110, fit:BoxFit.fill),
                Positioned(
                  bottom: 20,
                  child: Container(margin: EdgeInsets.only(top:3,left:5), child: Text(gridnamelist[index],style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
                   Positioned(
                  bottom: 5,
                  child: Row(
                    children: [
                      Row(children: [
                        Icon(Icons.star,color: Colors.amber,size:12),
                        Icon(Icons.star,color: Colors.amber,size:12),
                        Icon(Icons.star,color: Colors.amber,size:12)
                      ],),
                      Container(margin: EdgeInsets.only(top:3,left:5), child: Text("5.0 (23 Reviews)",style:TextStyle(color: Colors.grey,fontSize: 12))),
                    ],
                  ))
                  
              ],),);
                }),
                )

            ],
          ),
        ),
    );
  }
}





Widget abc( var image, var nam)
{
return Card(child: Stack(children: [
                Image.network(image, width:1000,height:150, fit:BoxFit.fill),
                Positioned(
                  bottom: 20,
                  child: Container(margin: EdgeInsets.only(top:3,left:5), child: Text( nam ,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)))),
                   Positioned(
                  bottom: 5,
                  child: Row(
                    children: [
                      Row(children: [
                        Icon(Icons.star,color: Colors.amber,size:15),
                        Icon(Icons.star,color: Colors.amber,size:15),
                        Icon(Icons.star,color: Colors.amber,size:15)
                      ],),
                      Container(margin: EdgeInsets.only(top:3,left:5), child: Text("5.0 (23 Reviews)",style:TextStyle(color: Colors.grey,fontSize: 15))),
                    ],
                  ))
                  
              ],),);
}


Widget abcd(var nam, var i){
  
  return Container(
    width: 220,
    height: 90,
    margin: EdgeInsets.only(top:8 ),
    padding:EdgeInsets.all(10),
     decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
     ),
    child: Card(
      
      child: Center(
        
        child: Row(
          
          children: [
            SizedBox(width:4), 
        Icon(i,color: Colors.purple,size:25),
        SizedBox(width:4),   
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container( margin: EdgeInsets.only(top:10),child: Text(nam,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
          Text("5 items",style:TextStyle(color: Colors.grey,fontSize: 15)),
        ],)
    ],),
      ),),
  );
}