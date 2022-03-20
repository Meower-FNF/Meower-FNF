function onCreate()
	-- background
	makeLuaSprite('vscode', 'vscode', -500, -280);
	setScrollFactor('vscode', 0.9, 0.9);
	scaleObject('vscode', 1.8, 1.8);

	makeAnimatedLuaSprite('floating','floatinglines',0,200)
	addAnimationByPrefix('floating','playf','floatlines',24,true)
	scaleObject('floating', 1.2, 1.2);

	addLuaSprite('vscode', false);
	addLuaSprite('floating',false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	objectPlayAnimation('floating','playf',true)
end