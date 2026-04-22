import 'package:flutter/material.dart';

void main() {
  runApp(const Wajihclass ());}

class Wajihclass extends StatelessWidget {
  const Wajihclass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }}


// 1. الشاشة الأولى (Home Screen)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("النشاط الأول"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 100, color: Colors.blueAccent),
            const SizedBox(height: 20),
            const Text("أنت الآن في الشاشة الرئيسية", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailScreen()),
                );
              },
              child: const Text("انتقل إلى شاشة التفاصيل"),
            ),
          ],
        ),
      ),
    );
  }
}


class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("شاشة التفاصيل"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.details, size:  100, color: Colors.orangeAccent),
            const SizedBox(height: 20),
            const Text("أنت الآن في شاشة التفاصيل (فوق الرئيسية)", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
              onPressed: () {

                Navigator.pop(context);
              },
              child: const Text("رجوع للشاشة السابقة", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}