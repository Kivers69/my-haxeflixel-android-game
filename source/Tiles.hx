package;

import haxe.Json;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.FlxG;

typedef TileJson = {
    var backgroundColor:Int;
    var solid:Array<SolidArray>;
}

typedef SolidArray = {
    var x:Float;
    var y:Float;
}

class Tile extends FlxSpriteGroup {
    public function new(json:String) {
        super(json);

        var tile:TileJson;
        tile = Json.parse('assets/data/room/' + json + '.json');

        var thing:FlxSpriteGroup = new FlxSpriteGroup(0,0);

        for (i in 0 ... tile.solid.length) {
            var gy:FlxSprite = new FlxSprite(tile.solid[i].x, tile.solid[i].y, 'assets/images/block.png');
            gy.immovable = true;
            gy.solid = true;
            thing.add(gy);
        }

        FlxG.camera.bgColor = tile.backgroundColor;
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
        //FlxG.colide();
    }
}
