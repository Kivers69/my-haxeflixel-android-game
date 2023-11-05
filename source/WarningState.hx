package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

class WarningState extends FlxState
{
    override public function create()
    {
        var warnTxt = new flixel.text.FlxText(0, 0, FlxG.width,
        "WARNING!\n\nThis game contains flashing lights, loud\nnoises, and alots of jumpscares!\n", 30);
        warnTxt.alignment = FlxTextAlign.CENTER;
        warnTxt.screenCenter();
        add(warnTxt);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.mouse.justPressed)
        {
            FlxG.switchState(new MenuState());
        }
    }
}