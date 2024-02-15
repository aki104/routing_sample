import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class List02Page extends ConsumerWidget {
 const List02Page({Key? key}) : super(key: key);
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