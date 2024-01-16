import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.changePage});
  final ValueSetter<String> changePage;
  @override
  State<Button> createState() => ButtonState();
}

class ButtonState extends State<Button> {
  HomeState homeState = HomeState();
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
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 224, 182, 255),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                minimumSize: (const Size(50, 42)),
            ),
            child: Text(text,
                style: GoogleFonts.openSans(
                    fontSize: 13, color: const Color.fromARGB(255, 0, 0, 0))),
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
