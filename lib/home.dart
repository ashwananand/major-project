import 'package:flutter/material.dart';

void main() {
  runApp(SmartCropsApp());
}

class SmartCropsApp extends StatelessWidget {
  const SmartCropsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SmartCropsHomePage(),
    );
  }
}

class SmartCropsHomePage extends StatelessWidget {
  const SmartCropsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          children: [
            Icon(Icons.home, size: 40, color: Colors.red),
            Text(
              'Smart Crops',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Irrigation, Alert Message',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildFeatureButton(Icons.pets, 'Animals', Colors.purple),
                  _buildFeatureButton(Icons.water_drop, 'Irrigation', Colors.blue),
                  _buildFeatureButton(Icons.report, 'Report Animals in Field', Colors.orange),
                  _buildFeatureButton(Icons.notifications, 'Alert Message', Colors.red),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  child: Text('Home'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  child: Text('Map'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  child: Text('Account'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureButton(IconData icon, String label, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.shade300,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: color,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
