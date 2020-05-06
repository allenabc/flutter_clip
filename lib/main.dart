import 'package:flutter/material.dart';

// entry point for the app,
// the => operator is shorthand for {} when there is only one line of code
void main() => runApp(MyApp());

// the root widget of our application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts"),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

// replace this method with code in the examples below
/*
Widget myLayoutWidget() {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Text("Hello world!"),
  );
}
*/

/*
ClipContext()
ClipOval

ClipPath
ClipRect
ClipRRect


 */
Widget myLayoutWidget() {
  const woman = 'assets/images/woman6.jpg';
  return Scaffold(
      body: Column(children: <Widget>[
    Image.asset(woman),
    Text("\nOriginal\n\n"),
    ClipOval(
      child: Align(
        heightFactor: 1.25,
        widthFactor: 1.25,
        alignment: Alignment.topCenter,
        child: Image.asset(woman),
      ),
    ),
    Text("Oval increased both directions 1.25 x 1.25"),
    ClipRRect(
      child: Align(
        widthFactor: 0.75,
        alignment: Alignment.topCenter,
        child: Image.asset(woman),
      ),
    ),
    Text("RRect width .75"),
    ClipOval(
      child: Align(
        heightFactor: 0.75,
        alignment: Alignment.topCenter,
        child: Image.asset(woman),
      ),
    ),
    Text("height .75"),
    /*  ClipOval(
      child: Align(
        heightFactor: 0.75,
        widthFactor: .75,
        alignment: Alignment.topCenter,
        child: Image.asset(woman),
      ),
    ),
   
    Text("Oval increased both directions 1.1 x 1.1"),
    */
  ]));
}
