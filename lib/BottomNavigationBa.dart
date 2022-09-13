import 'package:flutter/material.dart';
import 'StaticVaribls.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  // متغير من نوع ويدجت لتخزين الصفحات وعرضها حسب كل زر
  getCurrentIndex(currentIndex) {
    // دالة التنقل بين صفحات الشريط السفلي
    setState(() {
      index = currentIndex;
      if (currentIndex == 0) {
        Variblse.Wid = HomePage();
      } else if (currentIndex == 1) {
        Variblse.Wid = FirstPage();
      } else if (currentIndex == 2) {
        Variblse.Wid = LastPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //عمل شريط الازرار السفلي
      onTap:
          getCurrentIndex, // تحديد الاجراء الذي سيتم عند النقر على ايقونة الشريط
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Home"), // ازرار الشريط السفلي
        BottomNavigationBarItem(
            icon: Icon(Icons.first_page), label: "first page"),
        BottomNavigationBarItem(
            icon: Icon(Icons.last_page), label: "last page"),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Welcom in Home Page",
        style: TextStyle(fontSize: 50, color: Colors.amber),
      )),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Welcom in First Page",
        style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 7, 65, 255)),
      )),
    );
  }
}

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Welcom in Home Page",
        style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 255, 7, 7)),
      )),
    );
  }
}
