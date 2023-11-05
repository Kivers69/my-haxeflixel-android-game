package;

import flixel.Sprite;
import flixel.FlxG;

class ObjectClick extends FlxG
{
    public static function click(obj:String):Void
    {
        if (Flxg.mouse.x > obj.x && Flxg.mouse.width < obj.x + obj.width && Flxg.mouse.y > obj.y && Flxg.mouse.height < obj.y + obj.height)
        {
            return true;
        }
    }
}