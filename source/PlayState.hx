package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import tea.SScript;

class PlayState extends GameState {
    override public function create() {
        var textThing:String = 'no title for this game :(';

        var notdone:FlxText = new FlxText(0, 0, FlxG.width,textThing, 20);
        add(notdone);

        var scripts:SScript = new SScript('assets/scripts/script.hx');

        /*
        var tileThing:Tiles = new Tiles(0,0,'room');
        add(tileThing);
        */

        super.create();
    }

    override public function update(elapsed:Float) {
        super.update(elapsed);
        if (FlxG.mouse.justPressed) {
            //switchState(new gameState);
        }
    }
}
