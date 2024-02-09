import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Detail01 extends ConsumerWidget {
 const Detail01({Key? key}) : super(key: key);
 static String rootName = 'detail';
 static String rootPath = '/root/home/$rootName';

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return const Scaffold(
   body: Center(
     child: Text('Detail'),
   ),
 );
 }
}