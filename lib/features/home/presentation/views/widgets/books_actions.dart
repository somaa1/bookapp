import 'package:flutter/material.dart';

import '../../../../../core/book_model/book_model.dart';
import '../../../../../core/utils/functions/launch_url.dart';
import '../../../../../core/widgets/custom_button.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                text: 'Free',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              )),
          Expanded(
              child: CustomButton(
                onpresse: () {
                  launchCustomUr(context, bookModel.accessInfo?.webReaderLink!);
                },
                fontSize: 16,
                text: getText(bookModel),
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              )),
        ],
      ),
    );
  }

  String getText(BookModel bookmodell) {
    if(bookmodell.volumeInfo?.previewLink == null) {
return 'Not Available';
    }else{
      return 'Preview';
    }

  }
}
