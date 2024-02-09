import 'package:first_sample/ui/home/01/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../01_go_router/root/router_provider.dart';
import '../../bottom_bar/01/bottombar_screen.dart';
import '../../list/01/list_screen.dart';
import '../../root/01/root_screen.dart';


class Login01 extends ConsumerWidget {
 const Login01({Key? key}) : super(key: key);
 static String rootName = 'login';
 static String rootPath = '/root/$rootName';

 @override
 Widget build(BuildContext context, WidgetRef ref) {
   final notifier = ref.read(rootProvider.notifier);
 return Scaffold(
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         ElevatedButton(onPressed: (){
           notifier.update((state) => 1);
           context.go(Home01.rootPath);
         }, child: const Text('loginPush')),
       ],
     ),
   ),
 );
 }
}