package;

import flixel.FlxSprite;
import flixel.FlxG;

class Player extends FlxSprite {
    public function new(x:Float, y:Float, image:String, w:Int, h:Int) {
        super(x,y);
        
        var path:String = SUtil.getPath() + 'assets/images/$image.png';
        
        loadGraphic(paths, false, w, h);
        animation.add('left', {0,1,0,1}, 5, false);
        animation.add('right', {2,3,3,3}, 5, false);
        animation.add('up', {4,5,4,5}, 5, false);
        animation.add('down', {6,7,6,7}, 5, false);
    }
    
    override function update(elapsed:Float) {
        if (FlxG.keys.pressed.LEFT) {
            playAnimation('left');
            x -= 3;
        } else if (FlxG.keys.pressed.RIGHT) {
            playAnimation('right');
            x += 3;
        }
        if (FlxG.keys.pressed.UP) {
            playAnimation('up');
            y -= 3;
        } else if (FlxG.keys.pressed.DOWN) {
            playAnimation('down');
            y += 3;
        }
        
        //finished animation when released key
        if (FlxG.keys.justReleased.LEFT || FlxG.keys.justReleased.RIGHT || FlxG.keys.justReleased.UP || FlxG.keys.justReleased.DOWN) {
            animation.finish();
        }
    }
    
    public function playAnimation(anim:String = 'down', loop:Bool = false):Void {
        animation.play(anim,loop);
    }
}