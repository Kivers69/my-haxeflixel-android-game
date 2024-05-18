package;

class Paths {
    function getPath(path:String) {
        return SUtil.getPath() + 'assets/$path';
    }

    public function image(image:String) {
        return getPath('images/$image.png');
    }
}