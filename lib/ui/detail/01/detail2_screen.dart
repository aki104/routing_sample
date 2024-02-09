import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Detail201 extends ConsumerWidget {
 const Detail201({Key? key}) : super(key: key);
 static String rootName = 'detail2';
 static String rootPath = '/root/home/detail/$rootName';

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return const Scaffold(
   body: Center(
     child: Text('Detail2'),
   ),
 );
 }
}