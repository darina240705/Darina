import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главный экран')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:25, left:10, right:10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DetailsScreen()),
                  );
                },
                child: const Text('Перейти на экран деталей'),
              ),
              const SizedBox(height: 20),
              Text(
                "Кофе & Моменты",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 35,
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Сохраняйте больше моментов с кофе",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // действие при нажатии
                },
                child: const Text("Каталог"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // действие
                },
                child: const Text("Заказ и оплата"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // действие
                },
                child: const Text("Где нас найти"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // действие
                },
                child: const Text("Обратная связь"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}