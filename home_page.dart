


import  'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/LoginPage.dart';
import 'package:untitled/SignupScreen.dart';
class HomePage extends StatelessWidget {
final user = FirebaseAuth.instance.currentUser;

HomePage({super.key});

void _logout(BuildContext context) async {
await FirebaseAuth.instance.signOut();
Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text("Home")),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("Welcome, ${user?.email ?? 'User'}!"),
ElevatedButton(
onPressed: () => _logout(context),
  child: const Text("Logout"),
),
],
),
),
);
}
}
