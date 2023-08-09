import 'package:bar_chart/bar_graph/bar_graph.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list
  List<int> weeklySummary = [1, 18, 10, 28, 16, 8, 1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Center(
        child: SizedBox(
          height: 300,
          child: MyBarGraph(
            weeklySummary: weeklySummary,
          ),
        ),
      ),
    );
  }
}
