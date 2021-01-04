import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'write_page.dart';
import 'edit_page.dart';
import 'camera_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text('메모메모',
                    style: TextStyle(fontSize: 36, color: Colors.blue)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: null,
                    child: Icon(Icons.add),
                    onPressed: () {
                      // 디바이스에서 이용가능한 카메라 목록을 받아옵니다.
                      final cameras = await availableCameras();

                      // 이용가능한 카메라 목록에서 특정 카메라를 얻습니다.
                      final firstCamera = cameras.first;
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => TakePictureScreen(
                                    // 적절한 카메라를 TakePictureScreen 위젯에게 전달합니다.
                                    camera: firstCamera,
                                  )));
                      _count++;
                      print("value of _count = $_count");
                    },
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    child: Icon(Icons.remove),
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => EditPage()));
                      _count--;
                      print("value of _count = $_count");
                    },
                  )
                ],
              )
            ],
          ),
          // LoadMemo(){
          //   List<Widget> memoList = [];
          //   memoList.add(Container(color: Colors.purpleAccent, height: 100,));
          //   return memoList;
          // }
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => WritePage()));
        },
        tooltip: '메모를 추가하려면 클릭하세요.',
        label: Text("메모 추가"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
