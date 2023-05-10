import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';

class AppElevatedBtn extends StatelessWidget {
  const AppElevatedBtn({Key? key, required this.btnText, required this.onTap})
      : super(key: key);

  final String btnText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return SizedBox(
      //height: 50,
      width: size*(95/360),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(14),
            backgroundColor: AppColor.appPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
        onPressed: onTap,
        child: Row(
          children: [
            Text(btnText),
            SizedBox(
              width: size * (8 / 360),
            ),
            CircleAvatar(
                radius: 10,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 13,
                ))
          ],
        ),
      ),
    );
  }
}
