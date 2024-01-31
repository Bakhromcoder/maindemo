import 'package:flutter/material.dart';
import 'package:maindemo/pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _oneDetails() async {
    String name = 'Flutter';
    String version = '3.16.9';
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage(name: "dart,", version: '3.16.9');
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text('information'),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: () {
            _oneDetails();
          },
        ),
      ),
    );
  }
}
