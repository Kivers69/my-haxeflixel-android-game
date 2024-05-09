package;

import flixel.FlxState;
import flixel.FlxG;

class GameState extends FlxState {
    public static function switchState(nextState:FlxState) {
        FlxG.switchState(nextState);
    }
}
