import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:assignment_6/Home.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _Review();
}

class _Review extends State <Review> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          TextField(
            decoration: const InputDecoration(
              labelText: "Enter New Comment",
            ),
            onSubmitted: (String value) {
              Home.comments.add(value);
              setState(() {});
            },
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: Home.comments.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text("Comment ${index + 1}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                    const SizedBox(height: 8),
                    Text(Home.comments[index], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
                  ],
                );
              }
            ),
          )
        ],
      ),
    );
  }

}