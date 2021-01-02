import 'package:CWCFlutter/controller/framework_controller.dart';
import 'package:CWCFlutter/model/framework.dart';
import 'package:flutter/material.dart';
import 'package:CWCFlutter/widget/cheetah_button.dart';

class Home extends StatelessWidget {
  final nameController = TextEditingController();
  final languageController = TextEditingController();

  final FrameworkController controller = FrameworkController.to;

  onItemPressed(Framework framework) {}

  onClearPressed() {
    nameController.clear();
    languageController.clear();
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
            Text('Selected Item Goes here'),
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
                  onPressed: () => {},
                  text: "Add",
                ),
                CheetahButton(
                  onPressed: () => {},
                  text: "Update",
                ),
                CheetahButton(
                  onPressed: () => onClearPressed(),
                  text: "Clear",
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
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
                            onPressed: () => {},
                          ),
                        ],
                      ),
                  separatorBuilder: (context, index) =>
                      Divider(color: Colors.black),
                  itemCount: controller.frameworks.length),
            ),
          ],
        ),
      ),
    );
  }
}
