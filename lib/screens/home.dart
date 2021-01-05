import 'package:CWCFlutter/controller/framework_controller.dart';
import 'package:CWCFlutter/model/framework.dart';
import 'package:flutter/material.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final nameController = TextEditingController();
  final languageController = TextEditingController();

  final FrameworkController controller = FrameworkController.to;

  onItemPressed(Framework framework) {
    nameController.text = framework.name;
    languageController.text = framework.language;
    controller.setSelected(framework);
  }

  onAddPressed() {
    Framework framework = new Framework(
      name: nameController.text,
      language: languageController.text,
    );

    onClearPressed();
    controller.addFramework(framework);
  }

  onDeletePressed(String id) {
    onClearPressed();
    controller.deleteFramework(id);
  }

  onUpdatePressed(String id) {
    Framework framework = new Framework(
      name: nameController.text,
      language: languageController.text,
    );

    onClearPressed();
    controller.updateFramework(id, framework);
  }

  onClearPressed() {
    nameController.clear();
    languageController.clear();
    controller.clearSelected();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('REST APIs with Dio')),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GetBuilder<FrameworkController>(
              builder: (controller) => Text(
                controller.selectedFramework == null
                    ? ''
                    : controller.selectedFramework.objectId,
              ),
            ),
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
                GetBuilder<FrameworkController>(
                  builder: (controller) => CheetahButton(
                    onPressed: controller.selectedFramework == null
                        ? () => onAddPressed()
                        : null,
                    text: "Add",
                  ),
                ),
                GetBuilder<FrameworkController>(
                  builder: (controller) => CheetahButton(
                    onPressed: controller.selectedFramework == null
                        ? null
                        : () => onUpdatePressed(
                              controller.selectedFramework.objectId,
                            ),
                    text: "Update",
                  ),
                ),
                CheetahButton(
                  onPressed: () => onClearPressed(),
                  text: "Clear",
                ),
              ],
            ),
            SizedBox(height: 16),
            GetBuilder<FrameworkController>(
              builder: (controller) => Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: InkWell(
                                onTap: () =>
                                    onItemPressed(controller.frameworks[index]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8),
                                    Text(controller.frameworks[index].name),
                                    SizedBox(height: 4),
                                    Text(controller.frameworks[index].language),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () => onDeletePressed(
                                  controller.frameworks[index].objectId),
                            ),
                          ],
                        ),
                    separatorBuilder: (context, index) =>
                        Divider(color: Colors.black),
                    itemCount: controller.frameworks.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
