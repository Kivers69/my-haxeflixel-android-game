package;

import flixel.FlxG;
import flixel.FlxBasic;
import flixel.FlxState;

class ObjectClick extends FlxState
{
    public static function clickPressed(?ObjectOrGroup:FlxBasic)
    {
        if (FlxG.mouse.overlaps(ObjectOrGroup) && FlxG.mouse.pressed)
        {}
    }
    public static function clickJustPressed(?ObjectOrGroup:FlxBasic)
    {
        if (FlxG.mouse.overlaps(ObjectOrGroup) && FlxG.mouse.justPressed)
        {}
    }
    public static function clickJustReleased(?ObjectOrGroup:FlxBasic)
    {
        if (FlxG.mouse.overlaps(ObjectOrGroup) && FlxG.mouse.justReleased)
        {}
    }
}