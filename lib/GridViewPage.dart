import 'dart:math';

import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {

  final List<String>_list= [

    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/img.png',
    'assets/a3.jpg',

    'assets/a5.jpg',
    'assets/a1.jpg',
    'assets/img.png',
    'assets/a5.jpg',
    'assets/a3.jpg',
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/img.png',
    'assets/a5.jpg',
    'assets/a3.jpg',

    'assets/a5.jpg',
    'assets/a1.jpg',
    'assets/a1.jpg',
    'assets/a3.jpg',
    'assets/a2.jpg',
    'assets/img.png',
    'assets/a5.jpg',

    'assets/a5.jpg',
    'assets/a3.jpg',
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/img.png',
    'assets/a5.jpg',

    'assets/a5.jpg',
    'assets/a3.jpg',
    'assets/a1.jpg',
    'assets/img.png',
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/a5.jpg',
    'assets/a3.jpg',

    'assets/a5.jpg',
    'assets/a1.jpg',
    'assets/a3.jpg',
    'assets/a2.jpg',
    'assets/a5.jpg',

    'assets/a5.jpg',
    'assets/a1.jpg',
    'assets/img.png',
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/a3.jpg',
    'assets/a5.jpg',

    'assets/a5.jpg',
    'assets/a1.jpg',
    'assets/img.png',

    'assets/a5.jpg',
    'assets/a3.jpg',

    'assets/a5.jpg',
    'assets/a1.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        elevation: 0,
        title: Text("Home",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
         centerTitle: true,
        actions: [
          Icon(Icons.share)
        ],
      ),
      
      body: SafeArea(child: Container(
        
        padding: EdgeInsets.all(20),

        child: Column(
children: [
  Container(

    height: 225,
    width: double.infinity,
    
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage("assets/a2.jpg"
          )),

    ),

    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [

          Colors.black.withOpacity(0.6),
          Colors.white.withOpacity(0.3),

        ],
        begin: Alignment.bottomCenter,

        )


      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Quick Shopping !",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),

          SizedBox(
            height: 15,
          ),

          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.grey[900]),)),
          ),
          SizedBox(
            height: 15,
          ),

        ],
      ),

    ),

  ),

  SizedBox(
    height: 40,
  ),
  
  Expanded(child: GridView.count(crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,

    children: _list.map((e) => Card(

      color: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(e),
            fit: BoxFit.cover,


          ),

          
          
        ),
        child: Transform.translate(offset: Offset(25, -90),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
          
          child: Icon(Icons.shopping_cart_sharp,color: Colors.teal,),
        ),



        ),

        
        
      ),




    )).toList(),





  ))

  
],

        ),


      )),




    );
  }
}
