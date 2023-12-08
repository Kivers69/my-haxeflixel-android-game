package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;

class TitleState
{
    override public function create()
    {
        var bg = new FlxSprite('assets/images/title/menubg-0.png',0,0);
        add(bg);

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

        if (FlxG.mouse.justPressed)
        {
            FlxG.switchState(new WarningState());
        }
    }
}