import FlxState;
class GameState extends FlxState {
    public static function switchState(nextState:FlxState) {
        FlxG.switchState(nextState);
    }
}
