-- https://github.com/H3xad3cimalDev/imgui_library
local Player = game:GetService('Players').LocalPlayer
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/EZ.lua'))();
local NotifLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/NotificUI.lua'))();
local Window = Library:AddWindow('BABFT (Yön timo)')

local tab = Window:AddTab('Home')
local tab2 = Window:AddTab('Farm')
local tab3 = Window:AddTab('Player')
local tab4 = Window:AddTab('Teleports')
local tab5 = Window:AddTab('Misc')
