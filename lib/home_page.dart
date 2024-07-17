import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigoAccent,
      ),
      body: const Column(children: [
        Search(),
        Expanded(
          child: ListCards()
        )
      ],)
    );
  }
}

class ListCards extends StatelessWidget {
  const ListCards({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: Image.network("https://picsum.photos/id/$index/100/100"),
          title: Text("N° $index"),
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controllerSearch = TextEditingController(text:"");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextField(
          decoration: const InputDecoration(label: Text("Search")),
          controller: controllerSearch,
        ),
      ],
      ),
    );
  }
}
