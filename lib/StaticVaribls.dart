import 'package:flutter/material.dart';

class Variblse {
  static int counter = 0;
  static Widget Wid = PageBar1();
}

// تم انشاء هذه الصفحة لتخزين متغيرات ستاتيك لاستخدامها في اكثر من مكان
class PageBar1 extends StatefulWidget {
  const PageBar1({Key? key}) : super(key: key);

  @override
  State<PageBar1> createState() => _PageBar1State();
}

class _PageBar1State extends State<PageBar1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Center(child: Image.asset("images/git_branch.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_clone.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_bolb_object.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_commit_object.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_head.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_parent.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_references.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_status.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_tag_object.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_tree_object.jpg")),
          ),
          Container(
            child: Center(child: Image.asset("images/git_worke.jpg")),
          )
        ],
      ),
    );
  }
}
