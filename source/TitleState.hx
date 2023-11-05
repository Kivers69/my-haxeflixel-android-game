package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.FlxSprite;

class TitleState extends FlxState
{
    override public function create()
    {
        var notdone = new flixel.text.FlxText(0, 0, FlxG.width,
        "THE GAME IS NOT FULLY DONE", 30);
        notdone.alignment = FlxTextAlign.CENTER;
        notdone.screenCenter();
        add(notdone);

        var hitbox = new FlxSprite();
        hitbox.makeGraphic(200, 200, FlxColor.WHITE);
        hitbox.alpha = 0.5;
        hitbox.x = notdone.x;
        hitbox.y = notdone.y;
        hitbox.width = notdone.width;
        hitbox.width = notdone.width;
        add(hitbox);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.mouse.overlaps(hitbox) && FlxG.mouse.justPressed)
        {
            FlxG.switchState(new WarningState());
        }
    }
}