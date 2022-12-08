--find if the notification library is enabled
function retry()
local state, error_msg = pcall(function() notifys+=5 end)
if not state then
print(error_msg)
loadstring(game:HttpGet("https://guap.gq/api/scripts/notif.lua"))()
else
  if notifys~=15 then
    print("Notify script is invalid")
    os.exit()
  else
    print("Notify valid!")
  end
end
end
retry()
--load game variables
local g = game
local players = g:GetService("Players")
local CG = g:GetService("CoreGui")
local snap = g:GetService("Snap")
local TS = g:GetService("TweenService")
local SSS = game:GetService("ServerScriptService")
local SSV = game:GetService("SoundService")
local RS = g:GetService("RunService")
local UIS = g:GetService("UserInputService")
local WS = g:GetService("Workspace")
local charStorage = WS["!!NOT SET VARIABLE!!"]--only change this if the characters are not stored in WS
Notify("Loaded!","Loaded game variables successfully")
--player variables
local plr = players["LocalPlayer"]--set this to whatever(if you have serverside)
local realChar = plr.Character
local root = realChar["HumanoidRootPart"]--get the character root!
local torso = realChar["Torso"]
local head = realChar["Head"]
local hum = realChar["Humanoid"]
Notify("Loaded!","Loaded Players variables successfully!")
--lets make the character POP!
