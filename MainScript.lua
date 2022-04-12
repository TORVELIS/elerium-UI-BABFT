-- https://github.com/H3xad3cimalDev/imgui_library
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/EZ.lua'))();
local NotifLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/NotificUI.lua'))();
local Window = Library:AddWindow('BABFT (Yön timo)')

-- define tabs

local tab = Window:AddTab('Home')
local tab2 = Window:AddTab('Farm')
local tab3 = Window:AddTab('Player')
local tab4 = Window:AddTab('Teleports')
local tab5 = Window:AddTab('Misc')

-- global vars

_G.TweenSpeed = 3
_G.AutoFarm = false

-- funcs

function setWalkSpeed(WS)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
end

function setJumpPower(JP)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP
end

function TweenToCFrame(TweenSpeed, CFrameToGo)
    if not game.Players.LocalPlayer.Character.Humanoid then return end
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenSpeed), {CFrame = CFrameToGo})
    tween:Play()
    tween.Completed:Wait()
end

function AutoFarmFunc()
    --TweenToCFrame(_G.TweenSpeed, CFrame.new()) --
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 1369.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --  
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 2139.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --  
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 2909.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --  
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 3679.09009, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --  
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 4449.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)) -- 
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 5219.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --  
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 5989.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)) -- 
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 6759.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 7529.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-51.5656433, 100.0000458, 8299.08984, 1, 0, 0, 0, 1, 0, 0, 0, 1)) --
    TweenToCFrame(_G.TweenSpeed, CFrame.new(-55.7065125, -358.739624, 9492.35645, 0, 0, -1, 0, 1, 0, 1, 0, 0)) --
    wait(5)
end

-- tab1

tab:AddButton("Copy Discord Link", function()
    setclipboard("discord.gg/QzgbdcXYaP")
    local N1 = NotifLib.new("success", "Copied to clipboard", "Copied discord.gg/QzgbdcXYaP to clipboard.")
    N1:deleteTimeout(3)
end)

--tab 2

local switch = tab2:AddSwitch("AutoFarm", function(bool)
    spawn(function()
        while _G.Autofarm == true do
            AutoFarmFunc()
            wait(5)
        end
    end)
end)

local slider = tab2:AddSlider("Autofarm speed (lower=more fast)", function(p)
	_G.TweenSpeed = p
    end,{
	["min"] = 3,
	["max"] = 20,
})	slider:Set(0)

--tab3

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

--tab5

tab5:AddButton("Destroy GUI", function()
    game:GetService("CoreGui").imgui:Destroy()
end)

local slider = tab5:AddSlider("Max Zoom", function(p)
	game.Players.LocalPlayer.CameraMaxZoomDistance = p
    end,{
	["min"] = 400,
	["max"] = 10000,
})	slider:Set(0)



