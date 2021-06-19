import 'package:flutter/material.dart';
import 'package:navigation_app/calucator/body.dart';
import 'package:navigation_app/climaApp/screens/loading_screen.dart';
import 'package:navigation_app/toDoyeApp/task_body.dart';

class OtherAppScreen extends StatelessWidget {
  static const routeName = '/other-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(TaskBody.routName),
              child: Card(
                child: Icon(
                  Icons.today,
                  color: Colors.green,
                  size: 80.0,
                ),
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushNamed(LoadingScreen.routName),
              child: Card(
                child: Icon(
                  Icons.cloud,
                  color: Colors.blue,
                  size: 80.0,
                ),
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(BodyMain.routName),
              child: Card(
                child: Icon(
                  Icons.calculate,
                  color: Colors.orange,
                  size: 80.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
