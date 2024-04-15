import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shortee/data/data.dart';
import 'package:shortee/screens/html-list.dart';
import 'package:shortee/screens/css-list.dart';
import 'package:shortee/screens/angular-list.dart';
import 'package:shortee/screens/php-list.dart';

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
            SizedBox(height: 10.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut ultricies nulla. Integer ut nisi ut sem mattis lacinia.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
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
                children: [
                  _buildCategoryCard(
                    context,
                    'HTML',
                    dictionaryData
                        .where((data) => data['category'] == 'HTML')
                        .length
                        .toString(),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HtmlListScreen()));
                    },
                  ),
                  _buildCategoryCard(
                    context,
                    'CSS',
                    dictionaryData
                        .where((data) => data['category'] == 'CSS')
                        .length
                        .toString(),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CssListScreen()));
                    },
                  ),
                  _buildCategoryCard(
                    context,
                    'Angular',
                    dictionaryData
                        .where((data) => data['category'] == 'Angular')
                        .length
                        .toString(),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AngularListScreen()));
                    },
                  ),
                  _buildCategoryCard(
                    context,
                    'PHP',
                    dictionaryData
                        .where((data) => data['category'] == 'PHP')
                        .length
                        .toString(),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhpListScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title,
      String description, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
                color: Colors.white, // Placeholder color for the photo
              ),
            ),
            SizedBox(height: 10),
            // Title
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF1D2038),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            // Description
            Text(
              description,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
