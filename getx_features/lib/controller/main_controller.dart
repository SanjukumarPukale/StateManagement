import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_features/views/home_screen.dart';

class MainController extends GetxController{


  userLogin(){
    print('userLogin');
    showLoading(title: 'Please wait...');
    Future.delayed(Duration(milliseconds: 5000), () {
      hideLoading();
      // Get.to(HomeScreen());                         // This will give back button in that navigated page to come back to this page,but this is not good
      // Get.off(HomeScreen());
        //or we can use the following also instead this
      Get.off(() => HomeScreen());                 // Routing from login page to homescreen
    },);
  }

  hideLoading(){
    Get.back();
  }

  showLoading({String title = 'Loading...'}){
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            height: 40,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(title),
              ],
            ),
          ), 
        ),
      ),
      barrierDismissible: false,
    );

  }

  showBottomSheet(){
    Get.bottomSheet(HomeScreen());
  }

  showSnackbar(){
    Get.snackbar(
      'It is inventor code',
      'Hello everyone',
      icon: Icon(Icons.person, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

   showErrorDialog(
      {String title = "Oops Error",
      String description = "Something went wrong "}) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Get.textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: Text("Okay"),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }


}