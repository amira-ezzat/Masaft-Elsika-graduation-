import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../layout/layout_screen.dart';
import '../../shared/componants/navegate.dart';
import 'order_services.dart';

class Confirm extends StatefulWidget {
  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  bool isArabiclPressed = false;

  bool isEnglishPressed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Column(
            children: [
              Text(
                'Are your sure you want to confirm order?'.tr(),

                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          // Add a variable to track whether the button is pressed
                          isArabiclPressed = true;
                        });
                        navigateAndFinish(context, OrdServices());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            // Change the background color based on the button state
                            return isArabiclPressed ?  Color(0xFFF0630B) : Colors.transparent;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Color(0xFFF0630B),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Cancel'.tr(),
                        style: TextStyle(
                          color: isArabiclPressed ? Colors.white : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          // Add a variable to track whether the button is pressed
                          isEnglishPressed = true;
                        });
                        navigateAndFinish(context, Layout());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            // Change the background color based on the button state
                            return isEnglishPressed ?  Color(0xFFF0630B) : Colors.transparent;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Color(0xFFF0630B),
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'Yes'.tr(),
                        style: TextStyle(
                          color: isEnglishPressed ? Colors.white : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
