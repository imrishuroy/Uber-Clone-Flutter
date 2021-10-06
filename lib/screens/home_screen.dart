import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);
  // final FirebaseApp app;

  // const HomeScreen({Key? key, required this.app}) : super(key: key);

  _upload() async {
    final ref = FirebaseDatabase.instance.reference().child('greet');
    // final FirebaseDatabase database = FirebaseDatabase(app: app);
    await ref.set('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _upload,
      ),
    );
  }
}
