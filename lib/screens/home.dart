import 'package:CWCFlutter/controller/framework_controller.dart';
import 'package:CWCFlutter/model/framework.dart';
import 'package:CWCFlutter/screens/framework_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final FrameworkController controller = FrameworkController.to;

  onDeletePressed(String id) {
    controller.deleteFramework(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('REST APIs with Dio')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GetBuilder<FrameworkController>(
              builder: (controller) => Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      Framework framework = controller.frameworks[index];

                      return InkWell(
                        onTap: () {
                          controller.setSelected(framework);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FrameworkForm()),
                          );
                        },
                        child: Row(
                          children: [
                            Image.network(
                              framework.imageUrl,
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8),
                                Text(framework.name),
                                SizedBox(height: 4),
                                Text(framework.language),
                                SizedBox(height: 8),
                              ],
                            ),

                            // IconButton(
                            //   icon: Icon(Icons.delete),
                            //   onPressed: () =>
                            //       onDeletePressed(framework.objectId),
                            // ),
                          ],
                        ),
                      );
                    },
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
