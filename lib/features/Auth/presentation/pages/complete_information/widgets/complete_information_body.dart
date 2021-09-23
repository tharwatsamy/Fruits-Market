import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:fruits_market/features/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(10),
          CompleteInfoItem(
            text: 'Enter your name',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          VerticalSpace(5),
          CustomGeneralButton(
            text: 'Login',
          )
        ],
      ),
    );
  }
}
