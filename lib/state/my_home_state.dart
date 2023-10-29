import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'my_home_state.freezed.dart';
//part 'my_home_state.g.dart';

@freezed
class MyHomePageState with _$MyHomePageState {
  const factory MyHomePageState({
    @Default(0) int counter,
  }) = _MyHomePageState;
}
