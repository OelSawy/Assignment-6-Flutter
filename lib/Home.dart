import 'dart:ui';

import 'package:assignment_6/BottomBar.dart';
import 'package:assignment_6/Company.dart';
import 'package:assignment_6/Description.dart';
import 'package:assignment_6/Review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Pages {
  page1,
  page2,
  page3
}

class Home extends StatefulWidget {
  const Home({super.key});

  
  static List<String> comments = [];
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  Pages current = Pages.page1;
  late Pages prevCurrent;
  late Pages temp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              temp = prevCurrent;
              current = temp;
              prevCurrent = current;
              setState(() {});
            },
            child: Container(
              margin: const EdgeInsets.only(top: 40, left: 20),
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.arrow_back, color: Colors.deepPurple,),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/images/Stock Logo.png", height: 70, width: 70),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text("Product Designer", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text("Jakarta - Full Time", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 121, 121, 121)),),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  prevCurrent = current;
                  current = Pages.page1;
                  setState(() {});
                },
                child: Container(
                  height: 40,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: current == Pages.page1 ? Colors.orange : Colors.white,
                  ),
                  child: Text("Description", style: TextStyle(fontSize: 18, color: current == Pages.page1 ? Colors.white : Colors.grey))
                ),
              ),
              InkWell(
                onTap: () {
                  prevCurrent = current;
                  current = Pages.page2;
                  setState(() {});
                },
                child: Container(
                  height: 40,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: current == Pages.page2 ? Colors.orange : Colors.white,
                  ),
                  child: Text("Company", style: TextStyle(fontSize: 18, color: current == Pages.page2 ? Colors.white : Colors.grey))
                ),
              ),
              InkWell(
                onTap: () {
                  prevCurrent = current;
                  current = Pages.page3;
                  setState(() {});
                },
                child: Container(
                  height: 40,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: current == Pages.page3 ? Colors.orange : Colors.white,
                  ),
                  child: Text("Review", style: TextStyle(fontSize: 18, color: current == Pages.page3 ? Colors.white : Colors.grey))
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: getPage(),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget getPage() {
    switch (current) {
      case Pages.page1:
        return const Description();
      case Pages.page2:
        return const Company();
      case Pages.page3:
        return const Review();
      default:
        return const Text("data");
    }
  }

}

