import 'package:flutter/material.dart';
import 'chat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Chat App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: const Text('Ali'),
              subtitle: const Text("Hi, how are you"),
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?size=626&ext=jpg&ga=GA1.2.602342611.1696756554&semt=ais")),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              title: const Text('Aslam'),
              subtitle: const Text("What's the update on the task?"),
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?size=626&ext=jpg&ga=GA1.2.602342611.1696756554&semt=ais")),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              title: const Text('Saad'),
              subtitle: const Text("What are your future goals?"),
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?size=626&ext=jpg&ga=GA1.2.602342611.1696756554&semt=ais")),
              trailing: const Icon(Icons.camera_alt_rounded),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyChat()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
