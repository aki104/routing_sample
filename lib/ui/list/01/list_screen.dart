import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class List01 extends ConsumerWidget {
 const List01({Key? key}) : super(key: key);
 static String rootName = 'list';
 static String rootPath = '/root/$rootName';

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return Scaffold(
   body: Placeholder(
     child: Text('list'),
   ),
 );
 }
}