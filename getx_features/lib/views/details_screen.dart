import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_features/controller/main_controller.dart';

class DetailScreen extends StatelessWidget {

  MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    print(data);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details of food"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              controller.showErrorDialog();
            }, 
            child: Text('Show dialog'),
            ),
          ElevatedButton(
            onPressed: () {
              controller.showBottomSheet();
            }, 
            child: Text('Show Bottom Sheet'),
            ),
          ElevatedButton(
            onPressed: () {
              controller.showSnackbar();
            },
            child: Text('Show Snackbar'),
            ),
        ],
      )
    );
  }
}
