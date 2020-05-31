import 'package:flutter/material.dart';

class  Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Neighborhood App'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              'You have successfully registered!', style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            RaisedButton(
              child: Text(
                  'Sign in'
              ),
              color: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      )
    );
  }
}
