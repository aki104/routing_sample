import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class BottomBaseState with _$BottomBaseState {
  const factory BottomBaseState({
    @Default(BottomPageType.home) BottomPageType pageType,
    @Default(false) bool isLoading,
  }) = _BottomBaseState;
}

enum BottomPageType {
  home(name:'home', icon: Icon(Icons.home)),
  list(name:'リスト', icon: Icon(Icons.list)),
  setting(name:'設定', icon:Icon(Icons.settings));

  const BottomPageType({
    required this.name,
    required this.icon
});
  final String name;
  final Icon icon;
}