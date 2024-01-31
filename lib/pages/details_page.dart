import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? name;
  final String? version;

  const DetailsPage({super.key, this.name, this.version});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  _BackTo() {
    List lst = ['Flutter', '3.16.9'];
    Navigator.of(context).pop(lst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('data ${widget.name} ${widget.version}'),
        onPressed: () {
          _BackTo();
        },
      )),
    );
  }
}
