import 'package:flutter/material.dart';

import '../calculatetem.dart';

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController(); //เอาไว้ควบคุมอ่านค่าที่เข้ามา
  final _temp = Tem();
  var _showTestButton = false;
 var _feedbackText = ''; //ต้องประกาศในระดับคลาส

  void handleClickGuess() {

    print(_controller.text);
    var num = double.tryParse(_controller.text);
    if (num == null) {
      //ถ้ากรอกสิ่งที่ไม่เป็นตัวเลขเข้ามา
      print('Input error');
      setState(() {
        _feedbackText = 'Input error, Please try again';
      });
      //print('Botton clicked!');
      print(_controller.text);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Midterm Exam')), //แถบด้านบน
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text('Temperature Converter',
           style: TextStyle(
            color: Colors.black,
            fontSize: 30.0

           )
           ),

          TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature',
              ),
            ),


            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor:  Colors.yellow
              ),
              onPressed: handleClickGuess,
              child: Text('celsius to fahrenheit'),

            ),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor:  Colors.yellow
              ),
              onPressed: handleClickGuess,
              child: Text('celsius to kelvin'),
            ) ,
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor:  Colors.yellow
              ),
              onPressed: handleClickGuess,
              child: Text('fahrenheit to celsius'),
            ) ,
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor:  Colors.yellow
              ),
              onPressed: handleClickGuess,
              child: Text('fahrenheit to kelvin'),
            ) ,
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor:  Colors.yellow
              ),
              onPressed: handleClickGuess,
              child: Text('kelvin to celsius'),
            ) ,
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor:  Colors.yellow
              ),
              onPressed: handleClickGuess,
              child: Text('kelvin to fahrenheit'),

            ) ,
            //ปุ่ม
          ],
        ),
      ),
    );
  }
}
