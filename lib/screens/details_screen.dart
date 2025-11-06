import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(CoffeeApp());
}

class DetailsScreen extends Statelesswidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: const Text('Детали')),
      body: const Center(
        child: Text('Это второй экран приложения'),
      ),
    );
  }
}

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoffeeSettingsPage(),
    );
  }
}

class CoffeeSettingsPage extends StatefulWidget {
  @override
  _CoffeeSettingsPageState createState() => _CoffeeSettingsPageState();
}

class _CoffeeSettingsPageState extends State<CoffeeSettingsPage> {
  String _coffeeType = 'Эспрессо';
  int _sugarAmount = 1;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  // Загрузка настроек из SharedPreferences
  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _coffeeType = prefs.getString('coffeeType') ?? 'Эспрессо';
      _sugarAmount = prefs.getInt('sugarAmount') ?? 1;
    });
  }

  // Сохранение настроек
  void _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('coffeeType', _coffeeType);
    await prefs.setInt('sugarAmount', _sugarAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Настройки кофейни')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Выбор типа кофе
            DropdownButton<String>(
              value: _coffeeType,
              items: ['Эспрессо', 'Капучино', 'Латте']
                  .map((type) => DropdownMenuItem(
                        child: Text(type),
                        value: type,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _coffeeType = value!;
                });
                _savePreferences();
              },
            ),
            SizedBox(height: 20),
            // Выбор количества сахара
            Row(
              children: [
                Text('Количество сахара: $_sugarAmount'),
                SizedBox(width: 10),
                Slider(
                  min: 0,
                  max: 5,
                  divisions: 5,
                  value: _sugarAmount.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      _sugarAmount = value.toInt();
                    });
                    _savePreferences();
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _loadPreferences(); // обновить данные
              },
              child: Text('Обновить настройки'),
            ),
          ],
        ),
      ),
    );
  }
}
