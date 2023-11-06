package;

import flixel.FlxSprite;

class FlxHx extends FlxSprite
{
    public static function makeHxSprite(tag:String,path:String,x:Float,y:Float):Void
    {
        var tag = new FlxSprite();
        tag.loadGraphic(path + ".png");
        tag.x = x;
        tag.y = y;
    }
}