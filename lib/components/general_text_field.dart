import 'package:flutter/material.dart';

import '../color/colors.dart';



class GeneralTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hint;


  GeneralTextField({required this.textEditingController,required this.hint});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,
          vertical: 10
      ),
      child: TextFormField(
        controller: textEditingController,
        cursorColor: AppColors.kMainColor,
        decoration:  InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors.kMainColor, width: 2)),
          border:const  OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
