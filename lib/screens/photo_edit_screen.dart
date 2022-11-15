import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:media_editor/constants/constants.dart';
import 'package:media_editor/widgets/customAppBar.dart';

class PhotoEditScreen extends StatefulWidget {
  const PhotoEditScreen(this.image ,{super.key});
  final XFile? image;
  @override
  State<PhotoEditScreen> createState() => _PhotoEditScreenState();
}

class _PhotoEditScreenState extends State<PhotoEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leadingWidth: 30,
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
      title: const Text(
        'Edit',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.share))
      ],
    ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: height(context) * 0.02,
          ),
          Container(
            height: height(context) * 0.8,
            width: width(context),
            child: Image.file(
              File(widget.image!.path)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              height: height(context) * 0.05,
              width: width(context),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.text_fields)
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}