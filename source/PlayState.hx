package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import sys.FileSystem;
import tea.SScript;

using StringTools;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var notdone:FlxText;
    var hscripts:SScript;
    override function create() {
        notdone = new FlxText(0, 0, FlxG.width,'', 20);
        add(notdone);

        //testing
        for (file in FileSystem.readDirectory(SUtil.getPath() + 'assets/scripts')) {
            if (file.endsWith('.hx')) {
                var path:String = SUtil.getPath() + 'assets/scripts/' + file;
                hscripts = new SScript(path);
                hscripts.execute();
                notdone.text = textThing + '\nscripts file list\n' + file;
            }
        }
        super.create();
        hscripts.call('create');
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
        hscripts.call('update');
    }
}
