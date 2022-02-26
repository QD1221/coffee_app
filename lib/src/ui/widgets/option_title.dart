import 'package:flutter/material.dart';

class OptionTitle extends StatelessWidget {
  const OptionTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? bodyText1 = Theme.of(context).textTheme.bodyText1;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'MILK OPTION ',
              style: bodyText1?.copyWith(color: Colors.black.withOpacity(0.7)),
              children: [
                TextSpan(
                  text: ' (REQUIRED)',
                  style: bodyText1?.copyWith(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
