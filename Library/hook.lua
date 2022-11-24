--Unimportant webhook stuff
local HttpService = game:GetService("HttpService")
function webhook(url, title, message)
local webhook = url
local dataFields = {
  "username" ="RPL Hook Service",
  "avatar_url"="https://ethapi.armorcodeditlol.repl.co/files/images/rnd-logo.png",
  "embeds"={
    "author"={
      "name"="Armor#5780",
      "url"="https://ethapi.armorcodeditlol.repl.co",
      "icon_url"="https://ethapi.armorcodeditlol.repl.co/user_profiles/admin/profile_pic.png"
    },
    "title"=title,
    "url"="https://github.com/ArmorCodedIt/Roblox-PaymentLib",
    "description"=message
  }
}

-- The pastebin API uses a URL encoded string for post data
-- Other APIs might use JSON, XML or some other format
local data = ""
for k, v in pairs(dataFields) do
	data = data .. ("&%s=%s"):format(HttpService:JSONEncode(k), HttpService:JSONEncode(v))
end
data = data:sub(2) -- Remove the first &

-- Here's the data we're sending
print(data)

-- Make the request
local response = HttpService:PostAsync(webhook, data)
-- The response will be the URL to the new paste (or an error string if something was wrong)
print(response)
end
