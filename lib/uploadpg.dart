import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plantnet2/moreupload.dart';
import 'package:plantnet2/readyupload.dart';
import 'package:plantnet2/screensize.dart';
import 'package:plantnet2/upload333333333.dart';
import 'package:permission_handler/permission_handler.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.h, top: 45.v),
              child: Image.asset(
                'assets/images/upload2.png',
                height: 285.v,
                width: 263.h,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text(
                'Upload Post',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 46,
                    fontFamily: 'Sanchez'),
              ),
            ),
            Uploading(),
            Padding(
              padding: EdgeInsets.only(bottom: 60.v, right: 5.h, left: 270.h),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Readyupload()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 40,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Uploading extends StatefulWidget {
  const Uploading({super.key});

  @override
  State<Uploading> createState() => _UploadingState();
}

class _UploadingState extends State<Uploading> {
  String? _videoName;
  String? _imageName;
  String? _audioName;

  Future<void> _pickAudio() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.audio,
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      setState(() {
        _audioName = file.uri.pathSegments.last;
      });
    }
  }

  Future<void> _pickVideo() async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      final ImagePicker _picker = ImagePicker();
      final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);

      if (video != null) {
        setState(() {
          _videoName = File(video.path).uri.pathSegments.last;
        });
      }
    } else {
      // Handle permission denied
      print("Permission denied");
    }
  }

  Future<void> _pickImage() async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) {
        setState(() {
          _imageName = File(image.path).uri.pathSegments.last;
        });
      }
    } else {
      // Handle permission denied
      print("Permission denied");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.v,
      width: 350.h,
      child: Stack(
        children: [
          Positioned(
              left: 5.h,
              child: Image.asset(
                'assets/images/img_21.png',
                height: 350.v,
                width: 350.h,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 70.v,
              left: 50.h,
              child: Image.asset(
                'assets/images/img_25.png',
                height: 35.v,
                width: 35.h,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 70.v,
              left: 135.h,
              child: SizedBox(
                height: 30,
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Write details about your plants'),
                ),
              )),
          Positioned(
              top: 145,
              left: 50,
              child: Image.asset(
                'assets/images/img_22.png',
                height: 39.v,
                width: 39.h,
                fit: BoxFit.fill,
              )),
          Positioned(
            top: 145,
            left: 150,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(211, 193, 219, 169))),
                onPressed: () {
                  _pickImage();
                },
                child: _imageName == null
                    ? Image.asset(
                        'assets/images/cloudnw.png',
                        height: 30.v,
                        width: 30.h,
                        fit: BoxFit.fill,
                      )
                    : Text(
                        _imageName!,
                      )),
          ),
          Positioned(
              top: 195.v,
              left: 50.h,
              child: Image.asset(
                'assets/images/img_23.png',
                height: 35.v,
                width: 44.h,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 195.v,
              left: 130.h,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(211, 193, 219, 169))),
                  onPressed: () {
                    _pickVideo();
                  },
                  child: _videoName == null
                      ? Image.asset(
                          'assets/images/cloudnw.png',
                          height: 30.v,
                          width: 30.h,
                          fit: BoxFit.fill,
                        )
                      : Text(_videoName!))),
          Positioned(
              top: 260.v,
              left: 50.h,
              child: Image.asset(
                'assets/images/img_24.png',
                height: 44.v,
                width: 33.h,
                fit: BoxFit.fill,
              )),
          Positioned(
            top: 260.v,
            left: 130.h,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(211, 193, 219, 169))),
                onPressed: () {
                  _pickAudio();
                },
                child: _audioName == null
                    ? Image.asset(
                        'assets/images/cloudnw.png',
                        height: 30.v,
                        width: 30.h,
                        fit: BoxFit.fill,
                      )
                    : Text(
                        _audioName!,
                      )),
          )
        ],
      ),
    );
  }
}
