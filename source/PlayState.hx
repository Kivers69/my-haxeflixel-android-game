package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import sys.FileSystem;

using StringTools;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var texts:FlxText;
    var frisk:Player;
    override function create() {
        texts = new FlxText(0, 0, FlxG.width, textThing, 20);
        add(texts);

        frisk = new Player(0,0,'frisk',19,29);
        add(frisk);

        super.create();
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}
