package;

import flixel.FlxState;
import flixel.FlxG;

class WarningState extends FlxState
{
    private var warnText = "WARNING!/n/nThis game contains flashing lights, loud/nnoises, and alots of jumpscares!/n";

    override public function create()
    {
        var warnTxt = new flixel.text.FlxText(0, 0, 0, warnText, 64);
        warnTxt.screenCenter();
        warnTxt.size = 30;
        add(warnTxt);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        if (FlxG.mouse.justPressed)
        {
            FlxG.switchState(new MenuState());
        }
        super.update(elapsed);
    }
}