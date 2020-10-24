import 'package:flutter/material.dart';
import 'package:pezeshkyar/color/colors.dart';

class formField extends StatelessWidget {
  final String text;
  final int length;
  final saved;
  final validator;
  final TextDirection textDirection;
  final TextAlign textAlign;
  formField({ @required this.text , @required this.length , @required this.saved , this.validator , this.textAlign , this.textDirection });
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    TextEditingController number = new TextEditingController();
    print(screenSize.width);
    return new Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        width: screenSize.width * 0.7,
        child: new TextFormField(
          keyboardType: TextInputType.phone,
          textDirection: textDirection,
          textAlign: textAlign,
          maxLength: length,
          autovalidate: true,
          decoration: new InputDecoration(
              counterText: "",
              border: new UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PriColor.secondColor,
                  width: 0.9,
                ),
              ),
              errorStyle: new TextStyle(
                fontSize: 10
              ),
              enabledBorder: new UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PriColor.secondColor,
                  width: 0.9,
                ),
              ),
              focusedBorder: new UnderlineInputBorder(
                borderSide: BorderSide(
                  color: PriColor.thirdColor,
                  width: 1,
                ),
              ),
              errorBorder: new UnderlineInputBorder(
                borderSide: new BorderSide(
                  color: PriColor.redoneColor,
                  width: 1
                )
              ),
              hintText: text,
              hintStyle: new TextStyle(

                color: PriColor.fifthColor,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0 ,horizontal: 5)),

          onSaved: saved,
          validator: validator,
        )
        );
  }
}
