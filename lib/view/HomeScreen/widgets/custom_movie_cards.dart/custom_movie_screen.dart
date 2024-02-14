import 'package:flutter/material.dart';

class CustomMovieCard extends StatelessWidget {
  final String title;

  const CustomMovieCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 100,
                    color: Colors.amber,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
