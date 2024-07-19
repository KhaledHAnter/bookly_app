import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: CustomButton(
            text: "Free",
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              final Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw Exception('Could not launch $url');
              }
            },
            text: "Free preview",
            textColor: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}
