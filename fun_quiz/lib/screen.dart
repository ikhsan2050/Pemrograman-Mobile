import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fun_quiz/main.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        title:  Text('Fun Quiz', style: TextStyle(fontSize: 35),),
        actions: [
          IconButton(onPressed: (() => null), icon: Icon(Icons.notifications),)
        ],
      ),
      body:  Center(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Text("MENU", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            ),
            Container(
              //color: Colors.lightBlueAccent,
              margin: EdgeInsets.all(10),
              child: MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.lightBlueAccent,
                child: Text('PLAY', style: TextStyle(color: Colors.black),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>  Level()));
                    },
              )
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.lightBlueAccent,
                child:  Text('OPTION'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: (() => null),
              )
            ),
             Container(
              margin: EdgeInsets.all(10),
              child: MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.lightBlueAccent,
                child: Text('HELP', style: TextStyle(color: Colors.black),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: (() => null),
                )
            ),
             Container(
              margin: EdgeInsets.all(10),
              child: MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.lightBlueAccent,
                child: Text('QUIT', style: TextStyle(color: Colors.black),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed:(){
                  SystemNavigator.pop();
                  },
                )
            ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   child: SizedBox(height: 20),
            // )
          ],
        ),
      ),
    );
  }
}





class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() =>HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 130 + MediaQuery.of(context).viewPadding.top,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.blueAccent,
                            Colors.lightBlueAccent
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.white,
                    )
                  ]
                )
              ]
            )
    ]
    );
  }
}