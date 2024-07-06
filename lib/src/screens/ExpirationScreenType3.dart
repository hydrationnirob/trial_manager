import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExpirationScreenType3 extends StatelessWidget {
  const ExpirationScreenType3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 20),
            const Text('Your trial has ended.'),
            ElevatedButton(
              onPressed: () {
                // Navigate to purchase screen
              },
              child: Text('Upgrade Now'),
            ),
          ],
        ),
      ),
    );
  }
}