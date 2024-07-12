import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          child: CustomButton(
            text: "19.99€",
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Free preview",
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}
