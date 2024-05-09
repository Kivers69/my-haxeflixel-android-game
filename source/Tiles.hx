package;

import haxe.Json;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;
import flixel.FlxG;

typedef TileJson = {
    backgroundColor:Int
}

class Tile extends FlxSpriteGroup {
    public function new(json:String) {
        super(x,y,tiles);

        var tile:TileJson;
        tile = Json.parse('assets/data/' + json + '.json');

        var thing:FlxSpriteGroup = new FlxSpriteGroup(0,0);

        for (i in 0 ... tile.solid.length) {
            var gy:FlxSprite = new FlxSprite(tile.solid[i].x, tile.solid[i].y, Paths.image('block'));
            gy.immovable = true;
            gy.solid = true;
            thing.add(gy);
        }

        FlxG.camera.bgColor = backgroundColor;
    }

    function update(elapsed:Float) {
        super.update(Float);
        //FlxG.colide();
    }
}
