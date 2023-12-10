import 'package:flutter/material.dart';
import 'package:stateful_task/custom_widget.dart';

class ColorBox extends StatefulWidget {
  const ColorBox({super.key});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  Color selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedColor,
              ),
              child: Center(
                child: Text(
                  _getColorName(selectedColor),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.red);
                    },
                    color: Colors.red),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.brown);
                    },
                    color: Colors.brown),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.purple);
                    },
                    color: Colors.purple),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.pink);
                    },
                    color: Colors.pink),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.orange);
                    },
                    color: Colors.orange),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.blue);
                    },
                    color: Colors.blue),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.green);
                    },
                    color: Colors.green),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.yellow);
                    },
                    color: Colors.yellow),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.teal);
                    },
                    color: Colors.teal),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.greenAccent);
                    },
                    color: Colors.greenAccent),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.blueGrey);
                    },
                    color: Colors.blueGrey),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.lime);
                    },
                    color: Colors.lime),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.cyan);
                    },
                    color: Colors.cyan),
                CustomButton(
                    onPressed: () {
                      _updateSelectedColor(Colors.indigo);
                    },
                    color: Colors.indigo),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _updateSelectedColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  String _getColorName(Color color) {
    if (color == Colors.red) {
      return 'Red';
    } else if (color == Colors.brown) {
      return 'Brown';
    } else if (color == Colors.purple) {
      return 'Purple';
    } else if (color == Colors.pink) {
      return 'Pink';
    } else if (color == Colors.orange) {
      return 'Orange';
    } else if (color == Colors.blue) {
      return 'Blue';
    } else if (color == Colors.green) {
      return 'Green';
    } else if (color == Colors.yellow) {
      return 'Yellow';
    } else if (color == Colors.teal) {
      return 'Teal';
    } else if (color == Colors.greenAccent) {
      return 'Green Accent';
    } else if (color == Colors.blueGrey) {
      return 'Blue Grey';
    } else if (color == Colors.lime) {
      return 'Lime';
    } else if (color == Colors.cyan) {
      return 'Cyan';
    } else if (color == Colors.indigo) {
      return 'Indigo';
    } else {
      return 'Unknown';
    }
  }
}
