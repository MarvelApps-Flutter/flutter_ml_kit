import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Box extends StatefulWidget {
  String text;

  final Widget viewPage;

  Box({required this.text, required this.viewPage, Key? key}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.viewPage));
      },
      child: Container(
        margin: EdgeInsets.only(top: 8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          //shadowColor: Color.fromARGB(255, 175, 216, 250),
          elevation: 20,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListTile(
                title: Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              )),
        ),
      ),
    );
  }
}
