_G.Settings = {
['Name'] = 'Fallens Wizard Life GUI',
['Intro'] = true,
['Keybind'] = 'RightAlt'
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DracolyteHD/JustSomRandom/main/Lib.lua", true))()


local Tab1 = Library:CreateTab('WL Scripts')

Tab1:Button('Inf Patronum', function()
    while true do
        wait()
        game.Players.LocalPlayer.Energy.Value = 200
    end
end)
Tab1:Button('Collect Galleons', function()
	local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
	for i,v in pairs(game.Workspace.Loots:GetChildren()) do
		if v:FindFirstChild 'Loot' then
			for _, f in pairs(v:GetChildren()) do
				if f.name == "Loot" then
					f.CFrame = plr.CFrame
			    end
		    end
        end
	end
end)
Tab1:Toggle('AutoBlock', false, function(bool)
_G = bool
    while _G do
		game.ReplicatedStorage.Events.WandEvent:FireServer(3)
		wait()
	end
end)
Tab1:Label('Autoblock (Must hold wand)')

local Tab2 = Library:CreateTab('Other Usefull GUIs')
Tab2:Button('HitBoxExpander', function()
    loadstring(game:HttpGet("http://gameovers.net/Scripts/Free/HitboxExpander/main.lua", true))()
end)
Tab2:Button('IY Admin', function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)