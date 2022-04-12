-- https://github.com/H3xad3cimalDev/imgui_library
local plr = game.Players.LocalPlayer
local Character = plr.Character
local HMR = Character.HumanoidRootPart
local hum = Character.Humanoid

local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/EZ.lua'))();
local NotifLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/TORVELIS/elerium-UI-BABFT/main/NotificUI.lua'))();
local Window = Library:AddWindow('BABFT (Yön timo)')


local tab = Window:AddTab('Home')
local tab2 = Window:AddTab('Farm')
local tab3 = Window:AddTab('Player')
local tab4 = Window:AddTab('Teleports')
local tab5 = Window:AddTab('Misc')
tab:AddButton("Copy Discord Link", function()
    setclipboard("discord.gg/QzgbdcXYaP")
    local N1 = NotifLib.new("success", "Copied to clipboard", "Copied discord.gg/QzgbdcXYaP to clipboard.")
    N1:deleteTimeout(3)

end)






tab5:AddButton("Destroy GUI", function()

game:GetService("CoreGui").imgui:Destroy

end)
