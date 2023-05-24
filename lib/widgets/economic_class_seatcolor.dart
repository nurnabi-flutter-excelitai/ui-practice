
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model_class/economy_class.dart';

class EcoSeatNameWidget extends StatelessWidget {
  final String child;

  const EcoSeatNameWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(child));
  }
}



class EconomicSeatGrid extends StatefulWidget {
  const EconomicSeatGrid({Key? key}) : super(key: key);

  @override
  State<EconomicSeatGrid> createState() => _EconomicSeatGridState();
}

class _EconomicSeatGridState extends State<EconomicSeatGrid> {
  List<int> selectedIndices = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w, right: 8.w, bottom: 8.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          mainAxisSpacing: 10.0.h,
          crossAxisSpacing: 4.0.w,
        ),
        itemCount: economySeat.length, // Total number of items in the grid
        itemBuilder: (context, index) {
          if (index == 3) {
            return EcoSeatNameWidget(child: economySeat[index].economicSeatName);
          }
          if (index == 10) {
            return EcoSeatNameWidget(child: economySeat[index].economicSeatName);
          }
          if (index == 17) {
            return EcoSeatNameWidget(child: economySeat[index].economicSeatName);
          }
          if (index == 24) {
            return EcoSeatNameWidget(child: economySeat[index].economicSeatName);
          }

          final seatName = economySeat[index];
          final isSelected = selectedIndices.contains(index);
          final color = isSelected ? Colors.blue : Colors.white;
          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedIndices.remove(index);
                } else {
                  selectedIndices.add(index);
                }
              });
            },
            child: Container(
              height: 12.h,
              width: 24.w,
              color: color,
              child: Center(child: Text(seatName.economicSeatName,style: TextStyle(fontSize: 9.sp),)),
            ),
          );
        },
      ),
    );
  }
}
