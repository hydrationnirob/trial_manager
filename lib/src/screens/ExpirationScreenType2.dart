import 'package:flutter/material.dart';

class ExpirationScreenType2 extends StatelessWidget {
  const ExpirationScreenType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trial Expired'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text('Your trial period has expired.'),
            Text('Please upgrade to continue using the app.'),
          ],
        ),
      ),
    );
  }
}