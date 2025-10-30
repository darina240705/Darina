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

void main() {
  runApp(Container(
    padding: EdgeInsets.only(top:25, left:10, right:10),
    color: Colors.white,
    child: Text("Кофе & Моменты",
        textDirection: TextDirection.ltr,               // текст слева направо
        textAlign: TextAlign.center,                    // выравнивание по центру
        style: TextStyle(color: Colors.black87,         // черный цвет текста
            fontSize: 35,                               // высота шрифта 35
            backgroundColor: Colors.white               // белый цвет фона текста
        )
      )

    child: Text("Сохраняйте больше моментов с кофе",
        textDirection: TextDirection.ltr,               // текст слева направо
        textAlign: TextAlign.center,                    // выравнивание по центру
        style: TextStyle(color: Colors.black87,         // черный цвет текста
            fontSize: 25,                               // высота шрифта 25
            backgroundColor: Colors.white               // белый цвет фона текста
        )
      )
    child: Text("Каталог",
        textDirection: TextDirection.ltr,               // текст слева направо
        textAlign: TextAlign.center,                    // выравнивание по центру
        style: TextStyle(color: Colors.black87,         // черный цвет текста
            fontSize: 20,                               // высота шрифта 20
            backgroundColor: Colors.white               // белый цвет фона текста
    )
    onPressed:(){}                                      // нажатие кнопки
    )
    child: Text("Заказ и оплата",
        textDirection: TextDirection.ltr,               // текст слева направо
        textAlign: TextAlign.center,                    // выравнивание по центру
        style: TextStyle(color: Colors.black87,         // черный цвет текста
            fontSize: 20,                               // высота шрифта 20
            backgroundColor: Colors.white               // белый цвет фона текста
    )
    onPressed:(){}                                      // нажатие кнопки
    )
    child: Text("Где нас найти",
        textDirection: TextDirection.ltr,               // текст слева направо
        textAlign: TextAlign.center,                    // выравнивание по центру
        style: TextStyle(color: Colors.black87,         // черный цвет текста
            fontSize: 20,                               // высота шрифта 20
            backgroundColor: Colors.white               // белый цвет фона текста
    )
    onPressed:(){}                                      // нажатие кнопки
    )
    child: Text("Обратная связь",
        textDirection: TextDirection.ltr,               // текст слева направо
        textAlign: TextAlign.center,                    // выравнивание по центру
        style: TextStyle(color: Colors.black87,         // черный цвет текста
            fontSize: 20,                               // высота шрифта 20
            backgroundColor: Colors.white               // белый цвет фона текста
    )
    onPressed:(){}                                      // нажатие кнопки
    )
  );
  )
}
}