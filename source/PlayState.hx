package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;

class PlayState extends FlxState
{
    override public function create()
    {
        var notdone = new FlxText(0, 0, FlxG.width,
        "THE GAME IS NOT FULLY DONE", 20);
        notdone.alignment = FlxTextAlign.CENTER;
        notdone.screenCenter();
        add(notdone);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}
