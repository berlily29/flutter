import 'package:flutter/material.dart';
import 'package:shortee/data/data.dart';

class HtmlListScreen extends StatelessWidget {
  const HtmlListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> htmlData =
        dictionaryData.where((data) => data['category'] == 'HTML').toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'HTML List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
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
            Expanded(
              child: ListView.builder(
                itemCount: htmlData.length,
                itemBuilder: (context, index) {
                  final String command = htmlData[index]['command'] as String;
                  final String code = htmlData[index]['code'] as String;

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
