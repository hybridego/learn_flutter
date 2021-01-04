import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '메모 제목을 적어주세요.'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextField(
              decoration: InputDecoration(hintText: '메모 내용을 적어주세요.'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              width: 200.0,
              child: TextField(
                style:
                    TextStyle(fontSize: 25.0, height: 1.0, color: Colors.blue),
                decoration: InputDecoration(hintText: 'N'),
                maxLength: 1,
                maxLines: 1,
                cursorWidth: 10,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
