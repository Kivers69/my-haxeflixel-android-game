package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import sys.FileSystem;
import tea.SScript;

using StringTools;

class PlayState extends GameState {
    var textThing:String = 'no title for this game';
    var texts:FlxText;
    var fileList:FlxText;
    var hxArray:Array<SScript>;
    override function create() {
        texts = new FlxText(0, 0, FlxG.width, textThing, 20);
        add(texts);
        
        fileList = new FlxText(0, 25, FlxG.width, 'hx file list:\n', 20);
        add(fileList);

        //testing
        for (file in FileSystem.readDirectory(SUtil.getPath() + 'assets/scripts')) {
            if (file.endsWith('.hx')) {
                var scripts:SSscript = new SScript(SUtil.getPath() + 'assets/scripts/' + file);
                scripts.execute();
                hxArray.push(scripts);
                fileList.text += file + '\n';
            }
        }
        
        super.create();
        callHaxe('create', []);
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
        callHaxe('update', [elapsed]);
    }

    public function callHaxe(func:String, ?arg:Dynamic) {
        for (hscript in hxArray) {
            hscript.call(func, arg);
        }
    }
}
