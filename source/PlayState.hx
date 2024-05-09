package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import tea.SScript;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var notdone:FlxText;
    var scripts:SScript;
    override function create() {
        notdone = new FlxText(0, 0, FlxG.width,textThing, 20);
        add(notdone);

        scripts = new SScript('assets/scripts/script.hx');

        super.create();

        scripts.call('create');
        scripts.execute();
        preset();
    }

    override function update(elapsed:Float) {
        super.update(elapsed);

        scripts.call('update');
    }

    function preset() {
        var thingy = scripts;

        thingy.set('FlxG', FlxG);
        thingy.set('FlxSprite', FlxSprite);
    }
}
