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
_G.BasicFarm = false
_G.deleted = false
_G.deleted2 = false

-- funcs

function TweenToCFrame(TweenSpeed, CFrameToGo)
    if not game.Players.LocalPlayer.Character.Humanoid then return end
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenSpeed), {CFrame = CFrameToGo})
    tween:Play()
    tween.Completed:Wait()
end

function BasicFarmRun()
    if _G.BasicFarm == true then
        wait()
        game.Players.LocalPlayer.Character.WaterDetector:Destroy()
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
        TweenToCFrame(_G.TweenSpeed, CFrame.new(-55.7065125, -358.739624, 9492.35645, 0, 0, -1, 0, 1, 0, 1, 0, 0))--
        wait(1)
    else
        if _G.BasicFarm == false then
           _G.BasicFarm = false
        end
    end
end

function Run_Farm()
    local client = game.Players.LocalPlayer
    local platform = Instance.new("Part", client.Character)
    platform.Anchored = true
    platform.Transparency = 1
    platform.Size = Vector3.new(6, 1, 6)

    local connection
    connection = game:GetService("RunService").RenderStepped:connect(function()
        if client.Character:FindFirstChild("HumanoidRootPart") then
            platform.Position = client.Character.HumanoidRootPart.CFrame * Vector3.new(0, -3.5, 0)
        else
            connection:Disconnect()
        end
    end)

    task.spawn(function()
        task.wait(2)
        firetouchinterest(client.Character.HumanoidRootPart, workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger, 0)
    end)

    for i=1,10 do
        if 1+1 == 3 then 
            return 
        else
            client.Character.HumanoidRootPart.CFrame = workspace.BoatStages.NormalStages["CaveStage" .. i].DarknessPart.CFrame + Vector3.new(0, -30, 0)
            
            task.wait(1)

            if workspace.BoatStages.NormalStages:FindFirstChild("CaveStage" .. i + 1) then
                client.Character.HumanoidRootPart.CFrame = workspace.BoatStages.NormalStages["CaveStage" .. i + 1].DarknessPart.CFrame + Vector3.new(0, -30, -20)
            end
        
            task.wait(0.5)
        end
    end
end

function setWalkSpeed(WS)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
end

function setJumpPower(JP)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP
end


-- tab1

tab:AddLabel("Script credits: Torvelis, Naenaed\n (made everything other than fast autofarm and uiLib)")
tab:AddLabel("Credits: Zinzox, Singularity (from v3rmillion)")
tab:AddLabel("Notification Library: Jxereas")

tab:AddButton("Copy Discord Link", function()
    setclipboard("discord.gg/QzgbdcXYaP")
    local N1 = NotifLib.new("success", "Copied to clipboard", "Copied discord.gg/QzgbdcXYaP to clipboard.")
    N1:deleteTimeout(3)
end)

--tab 2

tab2:AddSwitch("TP Autofarm", function(bool)
    _G.AutoFarm = bool
    spawn(function()
        repeat
            Run_Farm()
            wait(3)
        until _G.AutoFarm == false
    end)
end)

tab2:AddSwitch("Basic Autofarm (slightly buggy)", function(bool)
    _G.BasicFarm = bool
    spawn(function()
        repeat
            BasicFarmRun()
            wait(17)
        until _G.BasicFarm == false
    end)
end)

local slider = tab2:AddSlider("TweenSpeed (only works on Basic Farm)", function(p)
	_G.TweenSpeed = p
    end,{
	["min"] = 20,
	["max"] = 1,
})	slider:Set(85)

tab2:AddLabel("WARNING: Let Autofarm run to the end after disabling!")

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

-- local slider3 = tab3:AddSlider("Max Zoom", function(p)
-- 	game.Players.LocalPlayer.CameraMaxZoomDistance = p
--     end,{
-- 	["min"] = 400,
-- 	["max"] = 10000,
-- }) slider3:Set(0)

--tab5

tab5:AddButton("Destroy GUI", function()
    game:GetService("CoreGui").imgui:Destroy()
end)

tab5:AddButton("Remove water damage (reset to disable)", function()
    game.Players.LocalPlayer.Character.WaterDetector:Destroy()
end)

tab5:AddButton("Remove object damage (rejoin to disable", function()
    if _G.deleted2 ~= true then
        for i,v in pairs(game.Workspace.BoatStages:GetDescendants()) do
            if v.Name == "RockScript" then
                v.Parent:Destroy()
            end
        end
        local notifN4 = NotifLib.new("Success", "Succesfully removed object damage", 'Removed most damageable objects (must rejoin to undo)')
        notifN4:deleteTimeout(3.5)
        _G.deleted2 = true
    else
        local notifN5 = NotifLib.new("error", "Failed to remove stages", "Failed to remove damage objects")
        notifN5:deleteTimeout(3.5)
    end
end)

tab5:AddButton("Remove stages (rejoin to disable)", function()
    if _G.deleted ~= true then
        game:GetService("Workspace").BoatStages.OtherStages:Destroy()
        local notifN2 = NotifLib.new("Success", "Succesfully removed stages", 'Removed stages (must rejoin to undo)')
        notifN2:deleteTimeout(3.5)
        _G.deleted = true
    else
        local notifN3 = NotifLib.new("error", "Failed to remove stages", "Failed to remove stages")
        notifN3:deleteTimeout(3.5)
    end
end)
