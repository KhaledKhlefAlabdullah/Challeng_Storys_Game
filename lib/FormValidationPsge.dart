import 'package:flutter/material.dart';

import 'ViewPageData.dart';

class InputValidationForm extends StatefulWidget {
  const InputValidationForm({Key? key}) : super(key: key);

  @override
  State<InputValidationForm> createState() => _InputValidationFormState();
}

class _InputValidationFormState extends State<InputValidationForm> {
  final formKey = GlobalKey<FormState>();
  var id = TextEditingController();
  var fullName = TextEditingController();
  var salary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                  controller: id,
                  validator: ((value) {
                    if (value!.isEmpty || value == null) {
                      return "infalid id";
                    }
                  })),
              TextFormField(
                  controller: fullName,
                  validator: ((value) {
                    if (value!.isEmpty || value == null) {
                      return "infalid Name";
                    }
                  })),
              TextFormField(
                  controller: salary,
                  validator: ((value) {
                    if (value!.isEmpty || value == null) {
                      return "infalid Salary";
                    }
                  })),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return ViewPageData(
                            num.parse(id.text.toString()).toInt(),
                            fullName.text.toString(),
                            num.parse(salary.text.toString()).toInt());
                      }));
                    }
                  },
                  child: Container(
                    width: 150.0,
                    height: 80.0,
                    child: Row(
                      children: [Icon(Icons.add)],
                    ),
                  ))
            ],
          )),
    );
  }
}
