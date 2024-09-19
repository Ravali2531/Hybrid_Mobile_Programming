import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySwitzMap(),
    );
  }
}

class MySwitzMap extends StatefulWidget {
  const MySwitzMap({super.key});

  @override
  State<MySwitzMap> createState() => _MySwitzGoogleMap();
}

class _MySwitzGoogleMap extends State<MySwitzMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Layout Demo"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'asset/img.png',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(color: Colors.black,
                          fontSize: 15,
                      fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(height: 10,),
                    Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text('41')
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'CALL',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.near_me,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'ROUTE',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    )
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'SHARE',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 32),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
