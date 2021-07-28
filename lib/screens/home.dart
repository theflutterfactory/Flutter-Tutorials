import 'package:CWCFlutter/controller/file_controller.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.select(
            (FileController controller) => controller.user != null
                ? controller.user.name
                : 'CheetahCoding',
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              context.select(
                (FileController controller) => controller.imageByteList != null
                    ? Image.memory(controller.imageByteList, height: 160)
                    : Image.asset('assets/images/logo.png', height: 160),
              ),
              SizedBox(height: 24),
              Text(
                context.select((FileController controller) => controller.text),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 16),
              CheetahButton(
                text: "Save to .txt",
                onPressed: () => context.read<FileController>().writeText(),
              ),
              SizedBox(height: 16),
              CheetahButton(
                text: "Save to .json",
                onPressed: () => context.read<FileController>().writeUser(),
              ),
              SizedBox(height: 16),
              CheetahButton(
                text: "Save Image File",
                onPressed: () => context.read<FileController>().writeImage(),
              ),
              SizedBox(height: 16),
              CheetahButton(
                text: "Delete Image File",
                onPressed: () => context.read<FileController>().deleteImage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
