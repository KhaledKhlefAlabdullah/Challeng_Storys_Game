import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewPageData extends StatefulWidget {
  var id;
  var fullName;
  var salary;
  ViewPageData(this.id, this.fullName, this.salary);
  @override
  State<ViewPageData> createState() => _ViewPageDataState(id, fullName, salary);
}

class _ViewPageDataState extends State<ViewPageData> {
  var id;
  var fullName;
  var salary;
  _ViewPageDataState(this.id, this.fullName, this.salary);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$id,$fullName,$salary"),
    );
  }
}
// تم عمل هذه الضفحة لعرض بيانات سطر من الجدول