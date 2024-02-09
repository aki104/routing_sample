import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Setting01 extends ConsumerWidget {
 const Setting01({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context, WidgetRef ref) {
 return Scaffold(
   body: Placeholder(
     child: Text('setting'),
   ),
 );
 }
}