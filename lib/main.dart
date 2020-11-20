import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}

//Home page

class FirstRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets '),
        backgroundColor: Colors.black45,
      ),
      body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          ElevatedButton(
          child: Text('Navigate'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),

          FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
            disabledColor: Colors.blue,
          disabledTextColor: Colors.white,
          padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,

          child: Text('Flat Button'),
          ),
          FlatButton(
            color: Colors.blue,

              onPressed: (
              ){}
          , child: Text(
                'spinkit',
            style: TextStyle(
              color: Colors.white,
            ),
              )),
          ElevatedButton(
            child: Text('Go to list view'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListW()),
              );
            },
          ),
          ElevatedButton(
            child: Text('Go to image view'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageW()),
              );
            },
          ),

        ],
        ),
      );
  }
}

//image view Widget
class ImageW  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zoom-able ImageView"),
      ),
      body :
      Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          
          children:
          [InteractiveViewer(
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/fb.jpg'),
                radius: 60.0,
              ),
            ),
          ),
            SizedBox(height: 30.0),
            ElevatedButton(
              child: Text('Go to home '),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
              },
            ),

        ],
        ),
      ),


    );

  }

}


//ListView Image Widget
class ListW  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text('Audio'),
          ),
          ListTile(
            leading: Icon(Icons.beach_access),
            title: Text('Beach'),
          ),

          SizedBox(height: 10.0),
          ElevatedButton(
            child: Text('Navigate back to home'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstRoute()),
              );
            },
          ),

        ],
      ),
    );
  }

}


//Second Widget intent
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second widget"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to Widgets home screen!'),
        ),
      ),
    );
  }
}


