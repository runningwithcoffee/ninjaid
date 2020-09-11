import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  String name = "William";
  String surname = "Wallace";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja ID'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.grey,
            onPressed: () {
              setState(() {
                ninjaLevel += 1;
              });
            }),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                  radius: 100.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),
              Text(name,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                  )),
              SizedBox(height: 10.0),
              Text(surname,
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 1.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              Text('Ninja Level',
                    style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                  )),
              SizedBox(height: 10.0),
              Text('$ninjaLevel', // ninja level int
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 1.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  Text(
                    ' wwallace@ninja.co.uk',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
