
function onCreate()
makeLuaSprite('CN', 'song/song-Reboop', 950, 980)
scaleObject('CN', 1.2, 1.2);
setObjectCamera("CN", 'other')
if dadName == 'dad_gostoso_new' then
doTweenAlpha("CN","CN", 0, 0.1, true);
else
doTweenAlpha("CN","CN", 0.5, 0.1, true);
end
addLuaSprite('CN', true)
end