import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendAmount;
  final double spendPercent;

  ChartBar(this.label, this.spendAmount, this.spendPercent);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FittedBox(child: Text('\$${spendAmount.toStringAsFixed(0)}')),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 50,
            width: 10,
            child: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        color: Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(10))),
                FractionallySizedBox(
                  heightFactor: spendPercent,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(label)
        ],
      ),
    );
  }
}
