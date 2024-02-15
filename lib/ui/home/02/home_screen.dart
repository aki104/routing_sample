import 'package:auto_route/annotations.dart';
import 'package:first_sample/ui/detail/01/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../01_go_router/root/router_provider.dart';
import '../../detail/01/detail2_screen.dart';

@RoutePage()
class Home02Page extends ConsumerWidget {
 const Home02Page({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return Scaffold(
   body: SafeArea(
     child: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            // route(Detail01.rootPath, type:RouteType.path);
            context.go(Detail01.rootPath);
          }, child: Text('遷移先１')),
          ElevatedButton(onPressed: (){
            route(Detail201.rootPath, type:RouteType.path);
            // context.go(Detail01.rootPath);
          }, child: Text('遷移先２（スタックは遷移先１->遷移先２）')),
          ElevatedButton(onPressed: (){
            route('/root/home/rootDetail', type:RouteType.path);
            // context.go(Detail01.rootPath);
          }, child: Text('ボトムバーを残さない'))
        ],
       ),
     ),
   ),
 );
 }
}