package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import ObjectClick;

class TitleState extends FlxState
{
    override public function create()
    {
        var notdone = new flixel.text.FlxText(0, 0, FlxG.width,
        "THE GAME IS NOT FULLY DONE", 30);
        notdone.alignment = FlxTextAlign.CENTER;
        notdone.screenCenter();
        add(notdone);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (ObjectClick.clickJustPressed(notdone))
        {
            FlxG.switchState(new WarningState());
        }
    }
}