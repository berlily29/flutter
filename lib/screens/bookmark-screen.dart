import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shortee/data/data.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Bookmarks',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1d2038),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: dictionaryData
                    .where((data) => data['isBookmark'] == true)
                    .length,
                itemBuilder: (context, int i) {
                  final bookmarkedData = dictionaryData
                      .where((data) => data['isBookmark'] == true)
                      .toList();
                  final String command = bookmarkedData[i]['command'] as String;
                  final String code = bookmarkedData[i]['code'] as String;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFbfd8e6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              command,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1d2038),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              code,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
