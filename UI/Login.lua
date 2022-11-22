--Login Form (uses Auth() method to verify)
--JUST A TEMPLATE!
--[[
Host your own UI
Scroll to the last line to see required scripts
]]
url = "<INPUT SITE URL>"--Input your Auth.php url here
local Login_UI = Instance.new("ScreenGui")
local Login = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Username = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Password = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Login_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

Login_UI.Name = "Login_UI"
Login_UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Login.Name = "Login"
Login.Parent = Login_UI
Login.BackgroundColor3 = Color3.fromRGB(52, 48, 28)
Login.Position = UDim2.new(0.365486741, 0, 0.361198723, 0)
Login.Size = UDim2.new(0, 304, 0, 175)

UICorner.Parent = Login

TextLabel.Parent = Login
TextLabel.BackgroundColor3 = Color3.fromRGB(52, 48, 28)
TextLabel.BorderColor3 = Color3.fromRGB(52, 48, 28)
TextLabel.Position = UDim2.new(0.299342096, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 122, 0, 41)
TextLabel.Font = Enum.Font.Creepster
TextLabel.Text = "Login"
TextLabel.TextColor3 = Color3.fromRGB(24, 186, 12)
TextLabel.TextSize = 33.000

Username.Name = "Username"
Username.Parent = Login
Username.BackgroundColor3 = Color3.fromRGB(10, 84, 2)
Username.BorderColor3 = Color3.fromRGB(23, 184, 193)
Username.Position = UDim2.new(0.266115487, 0, 0.301550269, 0)
Username.Size = UDim2.new(0, 141, 0, 18)
Username.Font = Enum.Font.Highway
Username.PlaceholderColor3 = Color3.fromRGB(236, 236, 236)
Username.PlaceholderText = "Username:"
Username.Text = ""
Username.TextColor3 = Color3.fromRGB(0, 0, 0)
Username.TextSize = 14.000

UICorner_2.Parent = Username

Password.Name = "Password"
Password.Parent = Login
Password.BackgroundColor3 = Color3.fromRGB(10, 84, 2)
Password.BorderColor3 = Color3.fromRGB(23, 184, 193)
Password.Position = UDim2.new(0.266115487, 0, 0.450121701, 0)
Password.Size = UDim2.new(0, 141, 0, 18)
Password.Font = Enum.Font.Highway
Password.PlaceholderColor3 = Color3.fromRGB(236, 236, 236)
Password.PlaceholderText = "Password:"
Password.Text = ""
Password.TextColor3 = Color3.fromRGB(0, 0, 0)
Password.TextSize = 14.000

UICorner_3.Parent = Password

Login_2.Name = "Login"
Login_2.Parent = Login
Login_2.BackgroundColor3 = Color3.fromRGB(42, 79, 40)
Login_2.Position = UDim2.new(0.365131587, 0, 0.639999986, 0)
Login_2.Size = UDim2.new(0, 82, 0, 23)
Login_2.Font = Enum.Font.Bangers
Login_2.Text = "Login"
Login_2.TextColor3 = Color3.fromRGB(64, 40, 199)
Login_2.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = Login_2

Exit.Name = "Exit"
Exit.Parent = Login
Exit.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Exit.Size = UDim2.new(0, 23, 0, 17)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(189, 0, 0)
Exit.TextSize = 14.000

UICorner_5.Parent = Exit
local function AODF_fake_script() -- Login_2.LocalScript
	local script = Instance.new('LocalScript', Login_2)

	loadstring(game:HttpGet("https://github.com/ArmorCodedIt/Roblox-PaymentLib/Library/lib.lua"))()
	local user = script.Parent.Parent.Username.Text
	local pass = script.Parent.Parent.Password.Text

	script.Parent.MouseButton1Down:Connect(function ()
		Auth(url, user, pass)
	end)
end
coroutine.wrap(AODF_fake_script)()
local function HTBBNAI_fake_script() -- Exit.LocalScript
	local script = Instance.new('LocalScript', Exit)

	script.Parent.MouseButton1Down:Connect(function ()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(HTBBNAI_fake_script)()
--[[
Required:
loadstring(game:HttpGet("https://github.com/ArmorCodedIt/Roblox-PaymentLib/Library/lib.lua"))()
local user = PATH.TO.USER.Text
local pass = PATH.TO.PASS.Text
script.Parent.MouseButton1Down:Connect(function ()
  Auth(url, user, pass)
end)
end
]]
