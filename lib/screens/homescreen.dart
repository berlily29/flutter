import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0, top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey there Developer!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0), // Adding space between the texts
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut ultricies nulla. Integer ut nisi ut sem mattis lacinia.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(
                height:
                    20.0), // Adding space between the texts and the text field
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10.0), // Set the corner radius
                color: Color(0xFF9FCADD),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  filled: true,
                  fillColor:
                      Colors.transparent, // Make the text field transparent
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                  border: InputBorder.none, // Remove the underline
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Browse by Collection',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(6, (index) {
                  return Card(
                    color: Color(0xFFBFD8E6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Photo
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.white, // Placeholder color for the photo
                          ),
                        ),
                        SizedBox(height: 10),
                        // Title
                        Text(
                          'Title',
                          style: TextStyle(
                            color: Color(0xFF1D2038),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        // Description
                        Text(
                          'Description',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
