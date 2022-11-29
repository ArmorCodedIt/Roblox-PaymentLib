--Auth Library Made By Armor!
--Library Mirrors:
--https://github.com/ArmorCodedIt/Roblox-PaymentLib/
--https://ethapi.armorcodeditlol.repl.co/api/scripts/Roblox-PaymentLib.lua
--Need the docs?
--https://ethapi.armorcodeditlol.repl.co/docs/Roblox-PaymentLib
--get a function from loadstring to save space
loadstring(game:HttpGet("https://ethapi.armorcodeditlol.repl.co/api/scripts/notif.lua"))()--notification library
local MS = game:GetService("MarketplaceService")
local plr = game:GetService("Players").LocalPlayer
local Workspace = game:GetService("Workspace")
--start of function GamePassOwned()
function GamePassOwned(id)
if(MS:UserOwnsGamePassAsync(plr.UserId, id)) then
--return found
    return 1

else
--return failed to find
    return 0
end
--end of function GamePassOwned()
end
--Checkpoint 1
print("Checkpoint 1")
--start of function GamePassBuy()
function GamePassBuy(id)
	MS:PromptPurchase(plr, id)
--end of function GamePassBuy()
end
--Checkpoint 2
print("Checkpoint 2")
--auth middleman
--SETUP FOR AUTH MIDDLEMAN IS REQUIRED!
--THE SOURCE FOR AUTHENTICATION WILL BE IN THE FOLDER: auth/
--start Auth()
function Auth(url, user, password, token)
  token = "" or token
  loadstring(game:HttpGet(url+"?user="..user.."&pass="..password.."token="..token))()--if token isnt needed then it wont matter(i do recommend using tokens for authentication though)
  local outs = Workspace["83hiehdsdkfjie"].Value
  if (outs=="Auth_Returns_0") then
    return "Verified"
  end
  if (outs=="Auth_Returns_1") then
    return "Failed"
  end
--end Auth()
end

--Checkpoint 3
print("Checkpoint 3")
--Next function
--Hopefully webhook fixed!
NotifyWithIcon("Finished", "Auth Library Loaded", "rbxasset://10836756860")
print("Sent Notification")
