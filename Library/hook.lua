--Unimportant webhook stuff
local HttpService = game:GetService("HttpService")
function webhook(url, title, message)
print(HTTPService:RequestAsync({
	Url = url,
	Method = "POST",
	Body = HTTPService:JSONEncode({
    ["username"]="RPL Hook Service",
    ["avatar_url"]="https://ethapi.armorcodeditlol.repl.co/files/images/rnd-logo.png",
    ["embeds"]={
      ["author"]={
        ["name"]="Armor#5780",
        ["url"]="https://ethapi.armorcodeditlol.repl.co",
        ["icon_url"]="https://ethapi.armorcodeditlol.repl.co/user_profiles/admin/profile_pic.png"
      },
      ["title"]=title,
      ["url"]="https://github.com/ArmorCodedIt/Roblox-PaymentLib",
      ["description"]=message
    }
	})
}))
end
