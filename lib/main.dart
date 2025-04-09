import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xender',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: FileManagerScreen(),
    );
  }
}

class FileManagerScreen extends StatelessWidget {
  const FileManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Icon(Icons.send, color: Colors.orange, size: 32),
                  SizedBox(width: 10),
                  Text("Xender",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.language, color: Colors.white),
              title: Text("Language", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.speed, color: Colors.white),
              title: Text("High-speed Mode supported",
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text("Settings", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.nightlight_round, color: Colors.white),
              title: Text("Night mode", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading:
                  Icon(Icons.settings_system_daydream, color: Colors.orange),
              title: Text("Mi Phone Settings",
                  style: TextStyle(color: Colors.amber)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.white),
              title: Text("Help & Feedback",
                  style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star, color: Colors.green),
              title: Text("Ratings", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.white),
              title: Text("About", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("FILE"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search local files',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.sd_storage, color: Colors.blue),
            title: Text("Phone Storage", style: TextStyle(color: Colors.white)),
            subtitle: Text("Total: 244GB    Available: 135GB",
                style: TextStyle(color: Colors.green)),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.insert_drive_file, color: Colors.blue),
                  title: Text("Documents (45)",
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text("Includes Word, PPT, etc.",
                      style: TextStyle(color: Colors.grey)),
                ),
                ListTile(
                  leading: Icon(Icons.menu_book, color: Colors.blue),
                  title: Text("Ebooks (88)",
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text("Includes .txt, .chm, etc.",
                      style: TextStyle(color: Colors.grey)),
                ),
                ListTile(
                  leading: Icon(Icons.android, color: Colors.blue),
                  title:
                      Text("Apks (0)", style: TextStyle(color: Colors.white)),
                  subtitle: Text("Includes .apk files",
                      style: TextStyle(color: Colors.grey)),
                ),
                ListTile(
                  leading: Icon(Icons.archive, color: Colors.blue),
                  title: Text("Archives (4)",
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text("Includes .zip, .rar, etc.",
                      style: TextStyle(color: Colors.grey)),
                ),
                ListTile(
                  leading: Icon(Icons.file_present, color: Colors.blue),
                  title: Text("Big files (41)",
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text("Files > 50MB",
                      style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check), label: 'PLAYLIST'),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'TOMP3'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'SOCIAL'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ME'),
        ],
      ),
    );
  }
}
