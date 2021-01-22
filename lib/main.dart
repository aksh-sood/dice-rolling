import 'package:flutter/material.dart';
import 'dart:math';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext content) {
//     Random ran = new Random();
//     Random ran1 = new Random();
//     int max=6,min=1;
//     var leftDiceNumber = ran.nextInt(max-min);
//     var rightDiceNumber =ran1.nextInt(max-min);
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Row(
//           children: <Widget>[
//             Expanded(
//               // flex: 2,
//               child: FlatButton(
//                 onPressed: (){
//                   print('hello');
//                 },
//                 child: Image.asset('images/dice$leftDiceNumber.png'),
//               ),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Expanded(
//               child: FlatButton(
//                 onPressed: (){print('kkk');},
//                 child: Image.asset('images/dice$rightDiceNumber.png'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void number_change_right(){
    setState(() {


    rightDiceNumber=Random().nextInt(6)+ 1;

    });
  }
  void number_change_left(){
    setState(() {



      leftDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext content) {


    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              // flex: 2,
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: (){


                    number_change_left();


                },

              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                    number_change_right();
                    },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
