import 'package:flutter/material.dart';
import 'package:session_12/BottomNavigationBa.dart';
import 'package:session_12/FormValidationPsge.dart';
import 'package:session_12/MapFunction.dart';
import 'StaticVaribls.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarState();
}

class _TabBarState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //لعمل تبويبات في الصفحة
      animationDuration:
          Duration(seconds: 1), //تحديد مدة الانتقال بين التبويبات

      child: Scaffold(
        appBar: AppBar(
          title: Text("Session 12"),
          bottom: TabBar(tabs: [
            //لعمل  ايقونات التبويبات في البار
            Row(
              children: [
                Text('home'),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.home),
              ],
            ),
            Row(
              children: [
                Text('Setting'),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.settings),
              ],
            ),
          ]),
          centerTitle: true,
        ),
        floatingActionButton: // لانشاء الزر العائم في الصفحة
            Visibility(
          // عرض واخفاء الزر
          child: FloatingActionButton(
            // انشاءزر مستدير  عائمفي الصفحة
            onPressed: () {
              setState(() {
                Variblse.counter++;
              });
            },
            child: Icon(Icons.add),
          ),
          visible: true,
        ),
        bottomNavigationBar: // لعمل البار السفلي
            BottomNavBar(),
        body: TabBarView(
            // لعمل التبويبات حيث كل تبويبة ترتبط مع زر تبويب
            // ملاحظية يجب ان تكون العناصر في هذا العنصر بنفس عدد ازرار التبويبات
            // كل زر يرتبط مع تبويبة بالترتيب حيث يكون ترتيب الزر بنفس ترتيب التبويب الذي يتربط معه
            children: [
              InputValidationForm()
              //Variblse.Wid
              ,
              MapFunction()
            ]),
      ),
      length: 2,
    );
  }
}
