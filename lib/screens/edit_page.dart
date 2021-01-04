import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
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
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '메모 제목을 적어주세요.'),
            ),
            TextField(
              decoration: InputDecoration(hintText: '메모 제목을 적어주세요.'),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(hintText: '메모'),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(hintText: '메모'),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(hintText: '메모'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Square(),
                Square(),
                Square(),
              ],
            ),
            Row(
              children: <Widget>[
                Square(),
                Square(),
                Square(),
              ],
            ),
            Row(
              children: <Widget>[
                Square(),
                Square(),
                Square(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(),
      ),
    );
  }
}
