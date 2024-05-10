package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import sys.FileSystem;

using StringTools;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var texts:FlxText;
    var fileList:FlxText;
    override function create() {
        texts = new FlxText(0, 0, FlxG.width, textThing, 20);
        add(texts);
        
        fileList = new FlxText(0, 25, FlxG.width, 'hx file list:\n', 20);
        add(fileList);

        //testing
        for (file in FileSystem.readDirectory(SUtil.getPath() + 'assets/scripts')) {
            if (file.endsWith('.hx')) {
                fileList.text += file + '\n';
            }
        }
        
        super.create();
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}
