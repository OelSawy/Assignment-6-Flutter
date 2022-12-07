import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Description extends StatefulWidget {
  const Description({super.key});
  
  @override
  State<Description> createState() => _Description();
}

class _Description extends State <Description> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("About the Role", style: TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Product designers provide the user's point of view to the discussions and collaborate with the rest of the product team to ensure that users will end up with the best solution to the issu at hand. With a deep knowledge of how the technology works and interest in how users behave, the best product designers can answer any problem with a combination of well-defined flow, wireframes, information architecture, user journey, and/or storyboard", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
            SizedBox(height: 14),
            Text("What You Will Do", style: TextStyle(fontSize: 20, color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("• Work closely and under supervision of the product design lead, and follow the predefined process that was set by the product team \n • Able to comprehend with the product briefs and be able to present the ideas/solutions to the team under supervision of product design lead", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }

}