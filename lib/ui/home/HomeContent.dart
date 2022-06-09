import 'package:flutter/material.dart';

class MainContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("就是TMD秀")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text("叫声爸爸你敢答应吗")],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "电话"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "短信"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "邮箱"),
        ],
        onTap: (index) {
          _onTap(index);
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
