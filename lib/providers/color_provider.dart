import 'package:riverpod/riverpod.dart';

class ColorProvider extends Notifier<int> {
  @override
  int build() => 0;
  void changeColor(int value){
    state = value;
  }
}
final colorProvider = NotifierProvider<ColorProvider,int>(ColorProvider.new);
