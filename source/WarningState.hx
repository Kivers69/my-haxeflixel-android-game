package;

import flixel.FlxG;
import flixel.FlxState;

class WarningState extends FlxState
{
    private var warnText = "WARNING!\n\nThis game contains flashing lights, loud\nnoises, and alots of jumpscares!\n";

    override public function create()
    {
        var warnTxt = new flixel.text.FlxText(FlxG.width, 0, 0, warnText, 30);
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