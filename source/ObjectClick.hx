package;

import flixel.FlxG;

class ObjectClick extends FlxG
{
    public static function click(obj:String)
    {
        if (FlxG.mouse.x > obj.x &&
            FlxG.mouse.x < obj.x + obj.width &&
            FlxG.mouse.y > obj.y &&
            FlxG.mouse.y < obj.y + obj.height)
        {
            return true;
        }
    }
}