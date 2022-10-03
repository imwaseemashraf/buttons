import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('alert Dialog '),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                padding: EdgeInsets.all(50),
                child: Text('Alert Dialog content'),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      bookFlight(context);
                    },
                    child: Text(
                      'pressed button ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Naxtech'),
    content: Text('information about naxtech company'),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
