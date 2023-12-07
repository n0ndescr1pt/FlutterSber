import 'package:flutter/material.dart';



class MyChipChoice extends StatefulWidget {
  const MyChipChoice({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyChipChoiceState();
  }
}

class _MyChipChoiceState extends State<MyChipChoice> {
  late bool _isSelected;

  @override
  void initState() {
    _isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      label: Text("jopa"),
      selected: _isSelected,
      onSelected: (newBoolValue) {
        setState(() {
           _isSelected = newBoolValue;
        });
       
      },
    );
  }
}
