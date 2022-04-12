-- https://github.com/H3xad3cimalDev/imgui_library
local Player = game:GetService('Players').LocalPlayer
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/EZ.lua'))();
local Window = Library:AddWindow('Window Example')
local Tab = Window:AddTab('Tab 1')
local Tab2 = Window:AddTab('Tab 2')
local Tab3 = Window:AddTab('Tab 3')
local Farm = false
local pickedArea
local arealiste = {'1';'2';'3';'4'}

local Switch = Tab:AddSwitch('Autofarm', function(bool)
    Farm = bool
end)

local Dropdown = Tab2:AddDropdown('Area', function(Area)
    pickedArea = Area
end)

for i,v in pairs (arealiste) do
    Dropdown:Add(v)
end

while task.wait() do
    if Farm and Player.Character:FindFirstChild('HumanoidRootPart') then
        if pickedArea == '1' then
            for i,v in pairs(game:GetService('Workspace').GhostPos.Leve1:GetDescendants()) do
                if string.match(v.Name,'Ghost') and v:IsA('Model') and string.match(v.Parent.Name,'SpawnPos') and v:FindFirstChild('HumanoidRootPart') then
                    Player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + Vector3.new(0,-5,0)
                    game:GetService('ReplicatedStorage').RemoteEvents.GeneralAttack:FireServer()
                end
            end
        elseif pickedArea == '2' then
            print('p')
        end
    end
end
