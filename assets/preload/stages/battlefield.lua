local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeLuaSprite('battlefield','battlefield',-470, -100)
	addLuaSprite('battlefield',false)
	scaleObject('battlefield', 1.3, 1.3)
	
end

function onUpdatePost(elapsed)
	P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
	P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
	setProperty('iconP1.x',P1Mult - 110)
	setProperty('iconP1.origin.x',240)
	setProperty('iconP1.flipX',true)
	setProperty('iconP2.x',P2Mult + 110)
	setProperty('iconP2.origin.x',-100)
	setProperty('iconP2.flipX',true)
	setProperty('healthBar.flipX',true)
end

function onCreatePost()
    for i = 0, 3 do
        setPropertyFromGroup("strumLineNotes", i, "x", _G["defaultPlayerStrumX"..i])
    end
    for i = 4, 7 do
        setPropertyFromGroup("strumLineNotes", i, "x", _G["defaultOpponentStrumX"..i - 4])
    end
end
