package;

import flixel.FlxG;

class ObjectClick extends FlxG
{
    public function click(obj:String):Void
    {
        if (FlxG.mouse.x > obj.x && FlxG.mouse.width < obj.x + obj.width && FlxG.mouse.y > obj.y && FlxG.mouse.height < obj.y + obj.height)
        {
            return true;
        }
    }
}