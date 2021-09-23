import 'package:flutter/cupertino.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({Key? key, required this.text, this.inputType, this.maxLines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: const Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
