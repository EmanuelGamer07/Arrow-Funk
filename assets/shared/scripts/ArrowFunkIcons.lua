local iconP1Scale = 0
local iconP2Scale = 0

local bumpVal = 0.9085
local mult = 1.24

function onBeatHit()
    if curBeat % 2 == 0 then
        iconP1Scale = bumpVal * mult
        iconP2Scale = bumpVal
    else
        iconP1Scale = bumpVal
        iconP2Scale = bumpVal * mult
    end

    setProperty('iconP1.scale.x', iconP1Scale)
    setProperty('iconP1.scale.y', iconP1Scale)
    setProperty('iconP2.scale.x', iconP2Scale)
    setProperty('iconP2.scale.y', iconP2Scale)

    local duration = crochet / 1850
    doTweenscaleX('iconTween1', 'iconP1', 0, duration, 'quintOut')
    doTweenscaleY('iconTween2', 'iconP1', 0, duration, 'quintOut')
    doTweenscaleX('iconTween3', 'iconP2', 0, duration, 'quintOut')
    doTweenscaleY('iconTween4', 'iconP2', 0, duration, 'quintOut')
end
