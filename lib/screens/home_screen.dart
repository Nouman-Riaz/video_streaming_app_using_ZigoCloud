import 'package:flutter/material.dart';
import 'package:video_call/screens/call_page.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final String id;
  const HomeScreen({Key? key, required this.name, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CallPage(
                      callID: '1',
                      userName: name,
                      userId: id,
                    )));
              },
              child: Text('Join Call'),

            ),
          ),
        ],
      )

    );
  }
}
