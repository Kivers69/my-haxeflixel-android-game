package;

import flixel.FlxState;

class WarningState extends FlxState
{
    override public function create()
    {
        super.create();

    var text = new flixel.text.FlxText(0, 0, 0, "my balls hurt", 64);
    text.screenCenter();
    add(text);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }
}