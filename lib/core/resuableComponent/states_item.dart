import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class states_item extends StatelessWidget {
  String item;
 states_item(this.item);

  @override
  Widget build(BuildContext context) {
    return   Container(
        width: 70.w,
        height: 100.h,
        decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(50.sp)),
        child: Center(child: Text(item,style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),)));
  }
}
