-- https://github.com/H3xad3cimalDev/imgui_library
local Player = game:GetService('Players').LocalPlayer
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/EZ.lua'))();
local Window = Library:AddWindow('BABFT (Yön timo)')
local Tab = Window:AddTab('Home')
local Tab2 = Window:AddTab('Farm')
local Tab3 = Window:AddTab('Player')
local Tab4 = Window:AddTab('Teleports')
local Tab5 = Window:AddTab('Misc')
local Farm = false
local pickedArea
local arealiste = {'1';'2';'3';'4'}

local Switch = Tab2:AddSwitch('Autofarm', function(bool)
    Farm = bool
end)

local Dropdown = Tab2:AddDropdown('Area', function(Area)
    pickedArea = Area
end)

for i,v in pairs (arealiste) do
    Dropdown:Add(v)
end
