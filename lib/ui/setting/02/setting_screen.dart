import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../root/01/root_screen.dart';

@RoutePage()
class Setting02Page extends ConsumerWidget {
 const Setting02Page({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return Scaffold(
   body: Center(
     child: ElevatedButton(
       onPressed: (){
         ref.read(rootProvider.notifier).update((state) => 0);
         context.go('/');
       },
       child: Text('logout'),
     ),
   ),
 );
 }
}