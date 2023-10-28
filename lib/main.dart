import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp( BasketBallPointsCounter() );
}
class BasketBallPointsCounter extends StatefulWidget {
   BasketBallPointsCounter({super.key});

  @override
  State<BasketBallPointsCounter> createState() => _BasketBallPointsCounterState();
}

class _BasketBallPointsCounterState extends State<BasketBallPointsCounter> {
   int teamApoints=0;

   int teamBpoints=0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                          onPressed: (){

                          setState(() {
                            teamApoints++;
                          });

                          },
                          child: Text('Add 1 Point',
                            style: TextStyle(
                            fontSize: 18,
                              color: Colors.black,
                          ) ,
                          ),
                      ),



                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamApoints += 2 ;
                          });

                        },
                        child: Text('Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ) ,
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){

                          setState(() {
                            teamApoints += 3 ;
                          });

                        },
                        child: Text('Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ) ,
                        ),
                      ),

                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),

                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){
                          setState(() {
                            teamBpoints++;
                          });

                        },
                        child: Text('Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ) ,
                        ),
                      ),



                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){

                          setState(() {
                            teamBpoints+= 2 ;
                          });

                        },
                        child: Text('Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ) ,
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: (){

                          setState(() {
                            teamBpoints += 3 ;
                          });

                        },
                        child: Text('Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ) ,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: (){

                setState(() {
                  teamApoints=0;

                  teamBpoints=0;

                });
              },
              child: Text('Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ) ,
              ),
            ),
          ],
        ),

      ),
    ) ;
  }
}
