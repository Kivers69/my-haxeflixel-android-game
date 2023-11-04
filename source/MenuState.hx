package;

import flixel.FlxState;

class WarningState extends FlxState
{
    private var menuText = "FNAF IS NOT DONE YET";

    override public function create()
    {
        var menuTxt = new flixel.text.FlxText(0, 0, 0, menuText, 64);
        menuTxt.screenCenter();
        menuTxt.size = 30;
        add(menuTxt);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}