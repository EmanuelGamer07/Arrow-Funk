-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	makeAnimatedLuaSprite('Health','healthBarOV3', 0, 0)
	addAnimationByPrefix('Health','nombre del xml','healthBarOV3', 24, true) --24, fps de la animacion. true, activado o desactivado--
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	scaleObject('Health', 1.0, 1.0)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBar.visible', true)
end

function onUpdatePost(elapsed)
	setProperty('Health.x', getProperty('healthBar.x') + 2)
	setProperty('Health.y', getProperty('healthBar.y') + 2)
end