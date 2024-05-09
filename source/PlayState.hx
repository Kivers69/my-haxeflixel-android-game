package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class PlayState extends GameState {
    override public function create() {
        var textThing:String = 'no title for this game :(';

        var notdone:FlxText = new FlxText(0, 0, FlxG.width,textThing, 20);
        notdone.scrollfactor.set();
        add(notdone);

        var tileThing:Tiles = new Tiles('room');
        add(tileThing);

        super.create();
    }

    override public function update(elapsed:Float) {
        super.update(elapsed);
        if (FlxG.mouse.justPressed) {
            //switchState(new gameState);
        }
    }
}
