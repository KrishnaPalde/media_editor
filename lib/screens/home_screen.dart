import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:media_editor/constants/constants.dart';
import 'package:media_editor/screens/photo_edit_screen.dart';
import 'package:media_editor/screens/video_edit_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routename = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    'VideoEditor',
                    style: TextStyle(fontFamily: 'alro', fontSize: 22),
                  ),
                ),
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(Icons.settings)
                )

              ],
            ),
            SizedBox(
              height: height(context) * 0.4,
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:  EdgeInsets.only(bottom: 8.0),
                  child: Text("Create New", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Container(
                  width: width(context) * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: height(context) * 0.025,),
                          // Image.asset('video.png'),
                          IconButton(
                            onPressed: () async {
                              FilePickerResult? result = await FilePicker.platform.pickFiles(
                                // allowMultiple: true,
                                type: FileType.video,
                              );
                              if (result != null) {
                                // List<File> files = result.paths.map((path) => File(path!)).toList();
                                // print(files);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => VideoEditScreen(result.paths.first),));
                              } else {
                                // User canceled the picker
                              }
                              
                            }, 
                            icon: const Icon(Icons.ac_unit),
                          ),
                          const Text("VIDEO", style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: height(context) * 0.025,)
                        ],
                      ),
                      Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: height(context) * 0.025,),
                          IconButton(
                            onPressed: () async {
                              final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoEditScreen(image),));
                            }, 
                            icon: const Icon(Icons.ac_unit),
                          ),
                          const Text("PHOTO", style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: height(context) * 0.025,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: height(context) * 0.025,),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(Icons.ac_unit),
                          ),
                          const Text("COLLAGE", style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: height(context) * 0.025,)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}