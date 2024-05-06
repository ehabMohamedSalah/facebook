import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_work/core/utils/Strings_manager.dart';
import 'package:task1_work/core/utils/assets_manager.dart';
import 'package:task1_work/presentaion/home/widget/Posts.dart';

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
              Image.asset(assetManager.Background,height: 230.h,width: double.infinity,fit: BoxFit.cover,),
              Container(
                color: Colors.lightBlue,
                width: double.infinity,
                child: Padding(
                  padding:   REdgeInsets.all(8.0),
                  child: Center(child: Text(StringsManger.Group,style:  Theme.of(context).textTheme.headlineLarge,)),
                ),
          
              ),
              Padding(
                padding:   REdgeInsets.all(8.0),
                child: Row(children: [
                  SizedBox(width: 10.w,),
                  Text(   StringsManger.FlutterEgypt,style:  Theme.of(context).textTheme.headlineMedium,),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20.sp,),
                ],),
              ),
              Padding(
                padding:   REdgeInsets.only(left: 8,right: 8),
                child: Row(children: [
                  Icon(Icons.public,color: Colors.black38,),
                  Text(StringsManger.PublicGroup,style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black38),),
                  SizedBox(width: 10.w,),
                  Text(StringsManger.k75,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(StringsManger.members,style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.black38),),
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
              PostsWidget(),



          
            ],
          ),
        ),
      ),
    );
  }
}
