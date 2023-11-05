package;

import flixel.FlxG;
//import flixel.FlxBasic;
import flixel.FlxState;

class ObjectClick extends FlxState
{
    public function clickPressed(name:String)
    {
        if (FlxG.mouse.overlaps(name) && FlxG.mouse.pressed)
        {return true;
        }
    }
    public function clickJustPressed(name:String)
    {
        if (FlxG.mouse.overlaps(name) && FlxG.mouse.justPressed)
        {return true;
        }
    }
    public function clickJustReleased(name:String)
    {
        if (FlxG.mouse.overlaps(name) && FlxG.mouse.justReleased)
        {return true;
        }
    }
}