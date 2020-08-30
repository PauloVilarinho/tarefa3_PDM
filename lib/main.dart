import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Like'),
          backgroundColor: Colors.grey,
        ),
        body: LikePage(),
      ),
    ),
  );
}

class LikePage extends StatefulWidget {
  @override
  _LikePageState createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  bool like = false;
  bool dislike = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: like ? 
          Image.asset('images/happy_sora.jpg') 
          : dislike ?  Image.asset('images/sad_sora.png') 
          : Image.asset('images/normal_sora.png'),
        ),
        Row(
          children: <Widget>[ Expanded(child:FlatButton.icon(
              textColor: Colors.white,
              icon: Icon(Icons.thumb_up,
              color: like? Colors.green : Colors.white),
              label: Text('Like',
              style: TextStyle(color: like? Colors.green : Colors.white)),
              onPressed: () {setState(() {
                like = !like;
                dislike = false;
              });},
                     ),
            ),
            Expanded(child:FlatButton.icon(
              textColor: Colors.white,
              icon: Icon(Icons.thumb_down,
              color: dislike? Colors.red : Colors.white),
              label: Text('Dislike',
              style: TextStyle(color: dislike? Colors.red : Colors.white)),
              onPressed: () {setState(() {
                like = false;
                dislike = !dislike;
              });},
                     ),
            ),
          ],
          ),
      ]
      ,);
  }
}
