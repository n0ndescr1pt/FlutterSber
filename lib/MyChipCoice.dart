import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/TextStyles.dart';

class MyChipChoice extends StatefulWidget {
   final String title;

  const MyChipChoice({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyChipChoiceState(text: title);
  }
}

class _MyChipChoiceState extends State<MyChipChoice> {
  late bool _isSelected;

  final String text;
  _MyChipChoiceState({required this.text});

  @override
  void initState() {
    _isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      shape: const StadiumBorder(),
      selectedColor: Colors.green,
      side: BorderSide.none,
      backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
      showCheckmark: false,
      label: Text(
        text,
        style: TextStyleSelect.chipStyle
      ),
      selected: _isSelected,
      onSelected: (newBoolValue) {
        setState(() {
          _isSelected = newBoolValue;
        });
      },
    );
  }
}
