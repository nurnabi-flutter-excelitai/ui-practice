import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model_class/business_class_model.dart';

// class SeatGrid extends StatefulWidget {
//   @override
//   _SeatGridState createState() => _SeatGridState();
// }
//
// class _SeatGridState extends State<SeatGrid> {
//   List<int> selectedIndices = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 8.0.w, right: 8.w, bottom: 8.h),
//       child: GridView.builder(
//         shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 5,
//           mainAxisSpacing: 12.0.h,
//           crossAxisSpacing: 16.0,
//         ),
//         itemCount: businessSeat.length, // Total number of items in the grid
//         itemBuilder: (context, index) {
//           final seatName = businessSeat[index];
//           final isSelected = selectedIndices.contains(index);
//           final color = isSelected ? Colors.blue : Colors.white;
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 if (isSelected) {
//                   selectedIndices.remove(index);
//                 } else {
//                   selectedIndices.add(index);
//                 }
//               });
//             },
//             child: Container(
//               height: 12.h,
//               width: 24.w,
//               color: color,
//               child: Center(child: Text(seatName.businessSeatName)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class SeatGrid extends StatefulWidget {
  @override
  _SeatGridState createState() => _SeatGridState();
}

class _SeatGridState extends State<SeatGrid> {
  List<int> selectedIndices = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w, right: 8.w, bottom: 8.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 10.0.h,
          crossAxisSpacing: 10.0.w,
        ),
        itemCount: businessSeat.length, // Total number of items in the grid
        itemBuilder: (context, index) {
          if (index == 2) {
            return SeatNameWidget(child: businessSeat[index].businessSeatName);
          }
          if (index == 7) {
            return SeatNameWidget(child: businessSeat[index].businessSeatName);
          }
          if (index == 12) {
            return SeatNameWidget(child: businessSeat[index].businessSeatName);
          }

          final seatName = businessSeat[index];
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
              height: 10.h,
              width: 20.w,
              color: color,
              child: Center(child: Text(seatName.businessSeatName,style: TextStyle(fontSize: 12.sp),)),
            ),
          );
        },
      ),
    );
  }
}

class SeatNameWidget extends StatelessWidget {
  final String child;

  const SeatNameWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(child));
  }
}


