import 'package:auto_route/annotations.dart';
import 'package:first_sample/ui/home/01/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../01_go_router/root/router_provider.dart';
import '../../bottom_bar/01/bottombar_screen.dart';
import '../../list/01/list_screen.dart';
import '../../root/01/root_screen.dart';

@RoutePage()
class Login02Page extends ConsumerWidget {
 const Login02Page({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context, WidgetRef ref) {
   print('login');
   // final notifier = ref.read(rootProvider.notifier);
 return Scaffold(
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         ElevatedButton(onPressed: (){
           // notifier.update((state) => 1);
         }, child: const Text('loginPush')),
       ],
     ),
   ),
 );
 }
}