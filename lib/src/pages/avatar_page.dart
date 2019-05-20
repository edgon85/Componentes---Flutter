import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://ncatregister.com/wp-content/uploads/2018/11/stanlee.jpg'),
              radius: 25.0,
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('EG'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),

      body: Center(
        child: FadeInImage(
            placeholder: AssetImage('assets/gif/jar_loading.gif'),
            image: NetworkImage('https://i.dailymail.co.uk/1s/2018/11/12/18/6096530-6381491-image-m-29_1542048376592.jpg'),
        fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
        ),

      ),
    );
  }
}