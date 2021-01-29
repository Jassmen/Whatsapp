import 'package:flutter/material.dart';

class BuildFloatingActionButton extends StatelessWidget {
  const BuildFloatingActionButton({
    Key key, this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30,right: 30),
      child: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(

          onPressed: () {},
          backgroundColor: Color(0xFF4AC959),
          child: Icon(icon),
        ),
      ),
    );
  }
}