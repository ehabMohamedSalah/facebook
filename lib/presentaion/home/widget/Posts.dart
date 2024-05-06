import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resuableComponent/states2_item.dart';

class PostsWidget extends StatelessWidget {
  List<String> lists=["Reels","You","Chat","Guide","frind","Reels","You","Chat","Guide","frind"];
  List<String> feeling=["Anonymous post","feeling","location","Guide","frind","Reels","You","Chat","Guide","frind"];

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(color: Colors.black12,height: 5.h,),
        SizedBox(height: 15.h,),
        Padding(
          padding:   REdgeInsets.all(8.0),
          child: Row(children: [
            Text("Featured",style: Theme.of(context).textTheme.headlineMedium,),
            Icon(Icons.info,color: Colors.black,),
            Spacer(),
            Icon(Icons.arrow_drop_down_outlined),
          ],),
        ),
        SizedBox(height: 15.h,),
        Container(color: Colors.black12,height: 5.h,),
        Padding(
          padding:   REdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/pic.png",height: 40.sp,)),
              ),
              Container(
                width: 300.w,
                height: 50.h,
                child: TextFormField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.sp)
                    ),
                    hintText: 'Write something...', // Hint text

                  ),),
              ),
              Icon(Icons.image,color: Colors.greenAccent,size: 35.sp,)
            ],
          ),
        ),
        Container(color: Colors.black12,width: double.infinity,height: 1,),
        Container(
          height: 40.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 10.w,),
            scrollDirection: Axis.horizontal,
            itemCount: lists.length,
            itemBuilder: (context, index) =>SecondStates(feeling[index]),

          ),
        ),
        SizedBox(height: 15.h,),
        Container(color: Colors.black12,width: double.infinity,height: 1,),
        Padding(
          padding:   REdgeInsets.only(right: 30,left: 30,top: 20,bottom: 20),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Most Relevant",style: Theme.of(context).textTheme.headlineMedium,),
              Icon(Icons.format_list_bulleted_outlined),
            ],),
        ),
        Container(color: Colors.black12,width: double.infinity,height: 1,),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(40.sp)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.sp),
                  child: Icon(Icons.person,color: Colors.white,size: 40.sp,)),
            ),
            SizedBox(width: 10.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300.w,
                  child: Row(
                    children: [
                      Text("Anonymous participant",style: Theme.of(context).textTheme.headlineMedium),
                      Spacer(),
                      Icon(Icons.linear_scale_outlined)
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("9h"),
                    SizedBox(width: 10.w,),
                    Icon(Icons.public)
                  ],)
              ],)
          ],
        )

      ],
    );
  }
}
