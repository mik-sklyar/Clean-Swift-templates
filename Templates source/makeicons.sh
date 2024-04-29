ICONNAME="TemplateIcon1024.png"
SIZES="16 32 64 128 256 512"
ICONSET="TemplateIcon.iconset"

mkdir $ICONSET

for SIZE in ${SIZES}; do
    sips -s format png -Z $SIZE $ICONNAME --out $ICONSET/icon_$SIZE.png
    sips -s format png -Z $((SIZE*2)) $ICONNAME --out $ICONSET/icon_$SIZE@2x.png
done

iconutil -c icns $ICONSET
#rm -R $ICONSET
