import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              leading: Image.network("https://picsum.photos/150",fit: BoxFit.contain),
              title: Text("N° $index"),
            ),
          ),
        )
      ],)
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.network("https://picsum.photos/150",fit: BoxFit.contain),
      const Expanded(child: Text("Lorem Ipsum")),
    ],);
  }
}

