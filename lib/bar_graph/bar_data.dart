import 'package:bar_chart/bar_graph/individual_bar.dart';

class BarData {
  final int sunAmmount;
  final int monAmmount;
  final int tueAmmount;
  final int wedAmmount;
  final int thurAmmount;
  final int friAmmount;
  final int satAmmount;

  BarData({
    required this.sunAmmount,
    required this.monAmmount,
    required this.tueAmmount,
    required this.wedAmmount,
    required this.thurAmmount,
    required this.friAmmount,
    required this.satAmmount,
  });

  List<IndividualBar> barData = [];

  void fillBarData() {
    barData = [
      //sun
      IndividualBar(x: 0, y: sunAmmount),
      //mon
      IndividualBar(x: 1, y: monAmmount),
      //tue
      IndividualBar(x: 2, y: tueAmmount),
      //wed
      IndividualBar(x: 3, y: wedAmmount),
      //thur
      IndividualBar(x: 4, y: thurAmmount),
      //fri
      IndividualBar(x: 5, y: friAmmount),
      //sat
      IndividualBar(x: 6, y: satAmmount)
    ];
  }
}
