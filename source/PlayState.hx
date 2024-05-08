package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;

class PlayState extends FlxState
{
    override public function create()
    {
        var textThing:String = 'no title for this game :(';
        var notdone:FlxText = new FlxText(0, 0, FlxG.width,textThing, 20);
        notdone.alignment = FlxTextAlign.CENTER;
        notdone.screenCenter();
        add(notdone);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
        if (FlxG.mouse.justPressed) {
            //FlxG.switchState(new gameState);
        }
    }
}
