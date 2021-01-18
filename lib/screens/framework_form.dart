import 'dart:io';

import 'package:CWCFlutter/controller/framework_controller.dart';
import 'package:CWCFlutter/model/framework.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class FrameworkForm extends StatelessWidget {
  final nameController = TextEditingController();
  final languageController = TextEditingController();

  final FrameworkController controller = FrameworkController.to;

  final Logger logger = new Logger();

  onAddPressed() {
    Framework framework = new Framework(
      name: nameController.text,
      language: languageController.text,
    );

    controller.addFramework(framework);
  }

  onUpdatePressed(String id) {
    Framework framework = new Framework(
      name: nameController.text,
      language: languageController.text,
    );

    controller.updateFramework(id, framework);
  }

  pickFile() async {
    FilePickerResult result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path);
      logger.d(file);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.selectedFramework == null
            ? 'Detail'
            : controller.selectedFramework.name),
      ),
      body: Container(
        child: Column(
          children: [
            CheetahButton(
              text: 'Pick Image',
              onPressed: () => pickFile(),
            ),
            SizedBox(height: 16),
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller: languageController,
              decoration: InputDecoration(hintText: "Language"),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CheetahButton(
                  onPressed: controller.selectedFramework == null
                      ? () => onAddPressed()
                      : null,
                  text: controller.selectedFramework == null ? "Add" : "Delete",
                ),
                CheetahButton(
                  onPressed: controller.selectedFramework == null
                      ? null
                      : () => onUpdatePressed(
                            controller.selectedFramework.objectId,
                          ),
                  text: "Update",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
