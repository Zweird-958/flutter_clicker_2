import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  int? money;
  final Function increaseMoney;
  String lang;

  Home(
      {super.key,
      required this.money,
      required this.increaseMoney,
      required this.lang});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Locale locale = await DeviceLocale.getCurrentLocale();
    // Locale systemLocale = Localizations.localeOf(context);
    String formattedMoney =
        NumberFormat.decimalPattern(widget.lang).format(widget.money);

    // String formattedMoney = "100";

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 60,
          child: Text(
            "$formattedMoney\$",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: SizedBox(
            width: 100,
            height: 60,
            child: ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
              ),
              onPressed: () => widget.increaseMoney(),
              child: const Text(
                "WORK",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
