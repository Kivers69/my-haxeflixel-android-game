package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;
import FlxHx;

class TitleState extends FlxState
{
    override public function create()
    {
        if bg = new FlxSprite();
        bg.loadGraphic('assets/images/title/menubg-0.png')
        bg.setPostcio
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