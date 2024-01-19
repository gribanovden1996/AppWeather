import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weather1/pages/home.dart';

import '../../resources/app_resources.dart';

class Button extends StatefulWidget {
  const Button(this.changePage,{super.key});
  final ValueSetter<String> changePage;
  @override
  State<Button> createState() => ButtonState();
}

class ButtonState extends State<Button> {
  final homeState = HomeState();
  late Map<String, bool> isButtonPressed= {
    'Today': false,
    'Tomorrow': true,
    '10 days': true,
  };

  Expanded buildButton(BuildContext context, String text, String page) =>
      Expanded(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
          ),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (isButtonPressed[text]!) {
                  for (var key in isButtonPressed.keys) {isButtonPressed[key] = true;}
                  isButtonPressed[text] = false;
                }
              });
              widget.changePage.call(page);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: isButtonPressed[text]!
                    ? AppColors.buttenBar
                    : AppColors.buttenBarPressed,
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                minimumSize: (const Size(50, 42)),
            ),
            child: AutoSizeText(text,
                style: isButtonPressed[text]!
                    ?styleButtonBar(AppColors.buttenBarText)
                    :styleButtonBar(AppColors.buttenBarTextPressed),
                maxLines: 1,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildButton(context, 'Today', "PageToday"),
              const SizedBox(width: 16,),
              buildButton(context, 'Tomorrow', "PageTomorrow"),
              const SizedBox(width: 16,),
              buildButton(context, '10 days', "Page_10_days"),
            ],
          ),
        ),
      );
}
