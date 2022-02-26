import 'package:flutter/material.dart';

enum Option { nul, full, skim, soy }

class CustomRadioButton extends StatefulWidget {
  double? padding;

  CustomRadioButton({Key? key, this.padding}) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  Option option = Option.nul;

  @override
  Widget build(BuildContext context) {
    TextStyle? bodyText2 = Theme.of(context).textTheme.bodyText2;
    TextStyle? caption = Theme.of(context).textTheme.caption;

    return Column(
      children: [
        Visibility(
          visible: option == Option.nul,
          child: Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Please select 1 item',
                  style: caption?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Full Milk',
                    style: bodyText2?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  Radio(
                      value: Option.full,
                      groupValue: option,
                      onChanged: (Option? value) {
                        setState(() {
                          option = value!;
                        });
                      }),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: widget.padding ?? 0),
              ),
              const Divider(height: 1),
              Padding(
                padding: EdgeInsets.symmetric(vertical: widget.padding ?? 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Skim Milk',
                    style: bodyText2?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  Radio(
                      value: Option.skim,
                      groupValue: option,
                      onChanged: (Option? value) {
                        setState(() {
                          option = value!;
                        });
                      }),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: widget.padding ?? 0),
              ),
              const Divider(height: 1),
              Padding(
                padding: EdgeInsets.symmetric(vertical: widget.padding ?? 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Soy Milk ',
                      style: bodyText2?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      children: [
                        TextSpan(
                          text: ' (฿20)',
                          style: bodyText2?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Radio(
                      value: Option.soy,
                      groupValue: option,
                      onChanged: (Option? value) {
                        setState(() {
                          option = value!;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
