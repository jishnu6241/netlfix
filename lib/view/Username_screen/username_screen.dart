import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network(
          "http://www.freepnglogos.com/uploads/netflix-logo-0.png",
          scale: 25,
        ),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'data',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
