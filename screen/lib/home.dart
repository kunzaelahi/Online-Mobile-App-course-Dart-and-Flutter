import 'package:flutter/material.dart';

import 'fullscreen.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget currentScreen = Screen();
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecom App UI"),
        actions: [
          Icon(Icons.notifications),
        ],
      ),

body: PageStorage(bucket:PageStorageBucket(), child: currentScreen ),
floatingActionButton:FloatingActionButton(
                      
                      onPressed: () { },
                      child: Icon(Icons.search,size: 30,
                          color: currentTab == 2 ? Colors.purple : Colors.white)),

   floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,                       
bottomNavigationBar: BottomAppBar(
  color: Colors.white,
    child: Container(
    height: 60,
    child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [ 
        MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home, size: 30,
                        color: currentTab == 0 ? Colors.purple : Colors.grey)),
          MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.favorite, size: 30,
                        color: currentTab == 1 ? Colors.purple : Colors.grey)),
               
                
               
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.add_shopping_cart, size: 30,
                        color: currentTab == 2 ? Colors.purple : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person, size: 30,
                        color: currentTab == 3 ? Colors.purple : Colors.grey)),
                        ],
                        ),
                        ),
                        ),


    );
  }
}