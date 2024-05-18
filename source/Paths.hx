package;

class Paths {
    static public function getPath(file:String) {
        return SUtil.getPath() + 'assets/' + file;
    }

    inline static public function image(key:String):Dynamic {
        return getPath('images/' + key + '.png');
    }
}