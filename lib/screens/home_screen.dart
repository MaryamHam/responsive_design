import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 bool isDesktop(BuildContext context)=>
 MediaQuery.of(context).size.width >= 600;

 bool isMobile(BuildContext context)=>
 MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(title:const Text("Responsive Design"),
backgroundColor: const Color.fromARGB(255, 209, 118, 153),),

body: Row(
  children: [

 if(isDesktop(context))

    Container(
      color:Color.fromARGB(255, 171, 138, 229),
      width: 140,
      child: const Center(child: Text("Sidebar",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),))

    ),

      Expanded(
        child: Container(
        color:Color.fromARGB(255, 138, 190, 163),
        child:const Center(child: Text("Content",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),))
      
          ),
      ),

  ],
),

    );
  }
}