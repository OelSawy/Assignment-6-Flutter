import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  
  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State <BottomBar> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (isBookmarked) {
              isBookmarked = false;
            } else {
              isBookmarked = true;
            }
            setState(() {});
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20, bottom: 20),
            alignment: Alignment.center,
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange
            ),
            child: isBookmarked ? const Icon(Icons.bookmark, color: Colors.white) : const Icon(Icons.bookmark_border, color: Colors.white)
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 20),
          alignment: Alignment.center,
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepPurple
          ),
          child: const Text("Apply Now", style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }

}