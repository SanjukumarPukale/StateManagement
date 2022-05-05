import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_features/views/details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List foodData = [
    {
      'id': '1',
      'name': 'First Name',
      'desc':
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document',
      'img': 'assets/images/img2.jpg'
    },
    {
      'id': '2',
      'name': 'Second Name',
      'desc':
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document',
      'img': 'assets/images/img3.jpg'
    },
    {
      'id': '3',
      'name': 'Third name',
      'desc':
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document',
      'img': 'assets/images/img1.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('List of food'),
      ),
      body: ListView.builder(
        itemCount: foodData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(() => DetailScreen(),arguments: {'id':foodData[index]['id']});
            },
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(3.0),
                        topRight: const Radius.circular(3.0),
                      ),
                      child: Image.asset(
                        foodData[index]['img'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      foodData[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
