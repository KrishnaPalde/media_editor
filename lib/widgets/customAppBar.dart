import 'package:flutter/material.dart';



class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.title,
    this.button,
  }) : super(key: key);
  final String title;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 30,
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [button!],
    );
  }
}
