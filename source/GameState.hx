import FlxState;
class GameState extends FlxState {
  new function() {
    super();
  }

  public static function switchState(nextState:FlxState) {
      FlxG.switchState(nextState);
  }
}
