import 'package:basic_app/gradient_container.dart';
import 'package:basic_app/privacy_policy_txt.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Política de Privacidade",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 120, 241),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 39, 120, 241),
              Color.fromARGB(255, 59, 167, 230)
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Column(
          children: [
            SizedBox(height: 20),
            PrivacyPolicyTxt(),
          ],
        ),
      ),
    );
  }
}
