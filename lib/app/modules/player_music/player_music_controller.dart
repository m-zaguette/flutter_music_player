import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'player_music_controller.g.dart';

@Injectable()
class PlayerMusicController = _PlayerMusicControllerBase
    with _$PlayerMusicController;

abstract class _PlayerMusicControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
