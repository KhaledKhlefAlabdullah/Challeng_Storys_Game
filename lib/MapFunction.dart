import 'package:flutter/material.dart';
import 'package:session_12/ViewPageData.dart';
import 'StaticVaribls.dart';
import 'Employee.dart';

class MapFunction extends StatefulWidget {
  const MapFunction({Key? key}) : super(key: key);

  @override
  State<MapFunction> createState() => _MapFunctionState();
}

class _MapFunctionState extends State<MapFunction> {
  int con = Variblse.counter;
  @override
  Widget build(BuildContext context) {
    return Container(
        /*
 Center(
            child: Text(
      "$con",
      style: TextStyle(
        fontSize: 30,
        color: Colors.red[300],
      ),
    ))
      */
        child: DataTable(
      // لانشاء جدول لعرض لبيانات في الصفحة
      columns: [
        // انشاء اعمدة الصفحة
        DataColumn(
            // لعمل عنوان للعمود
            label: Row(
          children: [Text("Id"), Icon(Icons.numbers)],
        )),
        DataColumn(
            label: Row(
          children: [Text("Full Name"), Icon(Icons.person)],
        )),
        DataColumn(
            label: Row(
          children: [Text("Salary"), Icon(Icons.money)],
        )),
        DataColumn(
            label: Row(
          children: [Text("Remove"), Icon(Icons.remove)],
        )),
      ],
      rows: [
        ...lstemp.map((e) {
          // تابع يستخدم لعرض البيانات من لائحة وفردها في خلايا الجدول
          return DataRow(cells: [
            // لعرض بيانات سطر
            DataCell(Text('${e.id}')), // عرض البياانت في خليه
            DataCell(Text('${e.fullname}')),
            DataCell(Text('${e.salary}')),
            DataCell(IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  // لنقل البيانات وعرضها في صفحة أخرى
                  return ViewPageData(e.id, e.fullname, e.salary);
                }));
              },
              icon: Icon(Icons.remove),
            )),
          ]);
        })
      ],
    ));
  }
}
