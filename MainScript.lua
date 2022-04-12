-- https://github.com/H3xad3cimalDev/imgui_library
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/EZ.lua'))();
local NotifLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/NotificUI.lua'))();
local Window = Library:AddWindow('BABFT (Yön timo)')


local tab = Window:AddTab('Home')
local tab2 = Window:AddTab('Farm')
local tab3 = Window:AddTab('Player')
local tab4 = Window:AddTab('Teleports')
local tab5 = Window:AddTab('Misc')

function setWalkSpeed(WS)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
end

function setJumpPower(JP)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP
end

tab:AddButton("Copy Discord Link", function()
    setclipboard("discord.gg/QzgbdcXYaP")
    local N1 = NotifLib.new("success", "Copied to clipboard", "Copied discord.gg/QzgbdcXYaP to clipboard.")
    N1:deleteTimeout(3)
end)

local slider = tab3:AddSlider("WalkSpeed", function(p)
	setWalkSpeed(p)
    end,{
	["min"] = 16,
	["max"] = 500,
})	slider:Set(0)

local slider = tab3:AddSlider("JumpPower", function(p)
	setJumpPower(p)
    end,{
	["min"] = 50,
	["max"] = 500,
})	slider:Set(0)


local slider = tab5:AddSlider("Max Zoom", function(p)
	game.Players.LocalPlayer.CameraMaxZoomDistance = p
    end,{
	["min"] = 400,
	["max"] = 10000,
})	slider:Set(400)

tab5:AddButton("Destroy GUI", function()
    game:GetService("CoreGui").imgui:Destroy()
end)

