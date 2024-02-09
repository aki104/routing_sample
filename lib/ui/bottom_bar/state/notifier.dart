import 'package:first_sample/ui/bottom_bar/state/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final bottomBaseProvider =
AutoDisposeNotifierProvider<HomeNavigatorNotifier, BottomBaseState>((){
  return HomeNavigatorNotifier();
});

class HomeNavigatorNotifier extends AutoDisposeNotifier<BottomBaseState> {
  HomeNavigatorNotifier();

  @override
  BottomBaseState build() {
    return const BottomBaseState();
  }

  void changeTab(int index) {
    state = state.copyWith(
        pageType: BottomPageType.values[index]
    );
  }
}
