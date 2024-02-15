import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Detail201 extends ConsumerWidget {
 const Detail201({Key? key}) : super(key: key);
 static String rootName = 'detail2';
 static String rootPath = '/root/home/detail/$rootName';

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return  Scaffold(
   body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Detail2'),
         ElevatedButton(onPressed: (){
           context.pop();
         }, child: Text('戻る')),
         ElevatedButton(onPressed: (){
           context.go('/root/home');
         }, child: Text('homeまで戻る'))
       ],
     ),
   ),
 );
 }
}