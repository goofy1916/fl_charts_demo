import 'package:fl_chart/fl_chart.dart';
import 'package:fl_charts/pie_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fl Charts Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: <Widget>[
            PieChart(
              PieChartData(
                  sections: data, centerSpaceRadius: 0, sectionsSpace: 10),
            ),
          ],
        ),
      ),
    );
  }
}

List<PieChartSectionData> data = [
  PieChartSectionData(title: "A", color: Colors.red),
  PieChartSectionData(title: "B", color: Colors.green),
  PieChartSectionData(title: "C", color: Colors.orange),
  PieChartSectionData(title: "D", color: Colors.yellow),
];
