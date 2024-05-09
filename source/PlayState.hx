package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import sys.FileSystem;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var notdone:FlxText;
    var scripts:SScript;
    override function create() {
        notdone = new FlxText(0, 0, FlxG.width,textThing, 20);
        add(notdone);

        super.create();
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}
