import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resuableComponent/states2_item.dart';

class MyHomePage extends StatelessWidget {
List<String> lists=["Reels","You","Chat","Guide","frind","Reels","You","Chat","Guide","frind"];
List<String> feeling=["Anonymous post","feeling","location","Guide","frind","Reels","You","Chat","Guide","frind"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Scaffold(

        appBar: AppBar(
        //  backgroundColor: Colors.lightBlue,
          leading: Icon(Icons.arrow_back,color: Colors.white,),
          actions: [

            IconButton(onPressed:  (){}, icon:  Icon(Icons.search,color: Colors.white,),),
            IconButton(onPressed:  (){}, icon:  Icon(Icons.mobile_screen_share_outlined,color: Colors.white,),),
            IconButton(onPressed:  (){}, icon:   Icon(Icons.list,color: Colors.white,), )

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/flutter.png",height: 230.h,width: double.infinity,fit: BoxFit.cover,),
              Container(
                color: Colors.lightBlue,
                width: double.infinity,
                child: Padding(
                  padding:   REdgeInsets.all(8.0),
                  child: Center(child: Text("Group by Egyptain GOOgle Flutter Community",style:  Theme.of(context).textTheme.headlineLarge,)),
                ),
          
              ),
              Padding(
                padding:   REdgeInsets.all(8.0),
                child: Row(children: [
                  SizedBox(width: 10.w,),
                  Text("Flutter Egypt",style:  Theme.of(context).textTheme.headlineMedium,),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20.sp,),
                ],),
              ),
              Padding(
                padding:   REdgeInsets.only(left: 8,right: 8),
                child: Row(children: [
                  Icon(Icons.public,color: Colors.black38,),
                  Text("public group",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black38),),
                  SizedBox(width: 10.w,),
                  Text("75K",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("members",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black38),),
                ],),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),
          
                    width: 200.w,
                    height: 50.h,
          
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Icon(Icons.family_restroom),
                        Text("Joined"),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
                    width: 200.w,
                    height: 50.h,
          
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_add_alt_1_sharp,color: Colors.white,),
                        Text("invite",style: TextStyle(color: Colors.white),),
          
                      ],
                    ),
          
                  )
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
          
                height: 50.h,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10.w,),
                  scrollDirection: Axis.horizontal,
                  itemCount: lists.length,
                  itemBuilder: (context, index) =>

                   Container(
                     width: 70.w,
                       height: 100.h,
                       decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(50.sp)),
                        child: Center(child: Text(lists[index],style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),))),),
                ),
              SizedBox(height: 20.h,),
          
          
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
          ),
        ),
      ),
    );
  }
}
