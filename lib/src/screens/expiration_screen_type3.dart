import 'package:flutter/material.dart';

class ExpirationScreenType3 extends StatelessWidget {
  const ExpirationScreenType3({super.key, required this.title, required this.message, required this.contactAddress});



  final String title;
  final String message;
  final String contactAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset('packages/trial_manager/lib/assets/lottie/monster.jpg')),
            const SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(message,style: const TextStyle(
                fontSize: 16,
              ),),
            ),
            Text(
              contactAddress,
              style: const TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}