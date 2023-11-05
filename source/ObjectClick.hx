package;

import flixel.FlxG;
import flixel.FlxBasic;

class ObjectClick extends FlxG
{
    public static function clickPressed(?ObjectOrGroup:FlxBasic):Void
    {
        if (FlxG.mouse.overlaps(ObjectOrGroup) && FlxG.mouse.pressed)
        {}
    }
    public static function clickJustPressed(?ObjectOrGroup:FlxBasic):Void
    {
        if (FlxG.mouse.overlaps(ObjectOrGroup) && FlxG.mouse.justPressed)
        {}
    }
    public static function clickJustReleased(?ObjectOrGroup:FlxBasic):Void
    {
        if (FlxG.mouse.overlaps(ObjectOrGroup) && FlxG.mouse.justReleased)
        {}
    }
}