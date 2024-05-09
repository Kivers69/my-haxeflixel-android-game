package;

import tea.SScript;
import flixel.FlxSprite;
import flixel.FlxG;

class HScript {
    var hscriptName:String = '';
    var hscripts:SScript;
    public function new(name:String) {
        hscripts = new SScript(name);
        hscripts.execute();
        hscriptName = name;

        hscripts.set('FlxSprite',FlxSprite);
        hscripts.set('FlxG',FlxG);
    }
}
