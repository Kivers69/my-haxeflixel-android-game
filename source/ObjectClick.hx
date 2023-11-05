package;

import flixel.FlxG;

class ObjectClick extends FlxG
{
    public static function clickPressed(object:String):Void
    {
        if (FlxG.mouse.overlaps(object) && flxG.mouse.pressed)
        {}
    }
    public static function clickJustPressed(object:String):Void
    {
        if (FlxG.mouse.overlaps(object) && flxG.mouse.justPressed)
        {}
    }
    public static function clickJustReleased(object:String):Void
    {
        if (FlxG.mouse.overlaps(object) && flxG.mouse.justReleased)
        {}
    }
}