import 'package:flutter/material.dart';

class Company extends StatefulWidget {
  const Company({super.key});
  
  @override
  State<Company> createState() => _Company();
}

class _Company extends State <Company> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Microsoft", style: TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("Microsoft Corporation is an American multinational technology corporation producing computer software, consumer electronics, personal computers, and related services headquartered at the Microsoft Redmond campus located in Redmond, Washington, United States.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }

}