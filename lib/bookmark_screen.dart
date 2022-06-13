import 'package:flutter/material.dart';
import 'package:flutter_dismissible_sample/main.dart';
import 'my_bottomnavigationbar.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(applicationTitle),
      ),
      body: ListView.builder(
          itemCount: items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (BuildContext context, int index) {
            return buildDismissible(index);
          }),
      bottomNavigationBar: const MyBottomNavigationBar(
        selectedIndex: 1,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Dismissible buildDismissible(int index) {
    return Dismissible(
      background: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        alignment: Alignment.centerLeft,
        color: Colors.orange.shade100,
        child: Row(
          children: const [
            Icon(
              Icons.archive,
              size: 30.0,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'archive',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      key: ValueKey<int>(items[index]),
      onDismissed: (DismissDirection direction) {
        setState(() {
          items.removeAt(index);
        });
      },
      child: ListTile(
        isThreeLine: true,
        subtitle: const Text('From left to right swipe to archive'),
        shape: Border.all(width: 0.1, color: Colors.grey),
        leading: const Icon(Icons.bookmark),
        title: Text(
          'Bookmark ${items[index]}',
        ),
        trailing: Image.asset(imagePath),
      ),
    );
  }
}
