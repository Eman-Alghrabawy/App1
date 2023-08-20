import 'package:app_e/Widgets_Reuseable/category_container.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          for (int i = 0; i < 6; i++)
            CategoryContainer(
              index: i,
            ),
        ]),
        Positioned(
          top: 20, // Adjust this value to your preference
          left: 10, // Adjust this value to your preference
          child: ElevatedButton(
            onPressed: () {
              showExitConfirmationDialog(context);
              // Navigate back
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
      ]),
    );
  }

  void showExitConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Exit Confirmation"),
          content: Text("Do you want to stay or exit the app?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Stay"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop(); // Close the current page
              },
              child: Text("Exit"),
            ),
          ],
        );
      },
    );
  }
}
