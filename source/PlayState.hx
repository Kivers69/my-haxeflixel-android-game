package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import sys.FileSystem;
import tea.SScript;

using StringTools;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var path:String;
    var texts:FlxText;
    var fileList:FlxText;
    var hscripts:SScript;
    override function create() {
        texts = new FlxText(0, 0, FlxG.width, textThing, 20);
        add(texts);
        
        fileList = new FlxText(0, 25, FlxG.width, 'hscript file list:\n', 20);
        add(fileList);

        //testing
        for (file in FileSystem.readDirectory(SUtil.getPath() + 'assets/scripts')) {
            if (file.endsWith('.hx')) {
                if (file.length < 0 ) {
                    path += SUtil.getPath() + 'assets/scripts/' + file;
                    hscripts = new SScript(path);
                    hscripts.execute();
                    fileList.text += file + '\n';
                } else {
                    fileList.text += 'no hx file found\n';
                }
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
