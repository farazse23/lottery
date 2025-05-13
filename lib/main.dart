import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
Random random = Random();
 int x = 0 ;
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffE6E6FA ),
        appBar: AppBar(
          title: Text('Lottery App', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.blue,
          centerTitle: true,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text('Lottery winning number is 4',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 10,
            ),
             Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(25),
              ),

                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: x==4? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Congratulations You won,\n your number is $x',style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.done_all,
                        size: 35,
                        color: Colors.green,),
                    ],

                ):Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Better luck next time,\n your number is $x',style:TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.error,
                        size: 35,
                        color: Colors.red,),
                    ],

                  ),
              ),

            ),


          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed:
        (){
           x = random.nextInt(6);
          setState(() {

          });
        },
        child: Icon(Icons.refresh,
        color: Colors.blue,),
        ),

      ),
    );
  }
}


