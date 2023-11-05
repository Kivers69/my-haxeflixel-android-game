package;

import flixel.FlxG;

class ObjectClick extends FlxG
{
    public static function click(object:String):Void
    {
        if (FlxG.mouse.x > object.x &&
            FlxG.mouse.x < object.x + object.width &&
            FlxG.mouse.y > object.y &&
            FlxG.mouse.y < object.y + object.height)
        {}
    }
}