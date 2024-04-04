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
                itemCount: dictionaryData.length,
                itemBuilder: (context, int i) {
                  // Manually casting the values to non-nullable strings
                  final command = dictionaryData[i]['command']!;
                  final description = dictionaryData[i]['description']!;

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
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        description,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
