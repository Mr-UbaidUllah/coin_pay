import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            backgroundColor: Colors.white, // White background
            borderData: FlBorderData(
              show: false,
            ),
            gridData: const FlGridData(show: false),
            titlesData: FlTitlesData(
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, _) {
                    return Transform.rotate(
                      angle: -1.5708, // Rotates the text 90 degrees counterclockwise
                      child: const Text(
                        '\$100',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              leftTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, _) {
                    switch (value.toInt()) {
                      case 0:
                        return const Text('2-8',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold));
                      case 1:
                        return const Text('9-15',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold));
                      case 2:
                        return const Text('16-22',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold));
                      case 3:
                        return const Text('23-29',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold));
                      case 4:
                        return const Text('30-1',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold));
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ),
            barGroups: [
              makeGroupData(0, 100, Colors.blue), // Full-sized blue bar
              makeGroupData(1, 70, Colors.yellow), // Shorter yellow bar
              makeGroupData(2, 100, Colors.blue), // Full-sized blue bar
              makeGroupData(3, 30, Colors.yellow), // Shorter yellow bar
              makeGroupData(4, 60, Colors.blue), // Full-sized blue bar
            ],
            barTouchData: BarTouchData(enabled: false),
            maxY: 120, // Define the maximum Y-axis value for better spacing
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y, Color barColor) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: barColor,
          width: 20,
          borderRadius: BorderRadius.zero,
        ),
      ],
    );
  }
}
