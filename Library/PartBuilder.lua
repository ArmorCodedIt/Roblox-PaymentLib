plr = game:GetService("Players").LocalPlayer
RS = game:GetService("RunService")
chara = plr.Character
HatName = ""--Insert your hat here
hat = chara[HatName]
hatPos = hat.Position
Instance.new("Part", chara)
chara["Part"].Name = "BaseSpinner"

Instance.new("Part", chara)
chara["Part"].Name = "Spoofed Head"
Instance.new("Attachment", chara["BaseSpinner"])
chara["Spoofed Head"]["Attachment"].Name = "Attach0"

Instance.new("Attachment", chara[HatName])
chara["Spoofed Head"]["Attachment"].Name = "Attach1"

chara["BaseSpinner"].CanCollide = false
chara["Spoofed Head"].CanCollide = false
Instance.new("AlignPosition", chara["Spoofed Head"])
chara["Spoofed Head"].AlignPosition.Name = "Change Pos"
chara["Spoofed Head"]["Change Pos"].Attachment0 = chara["Attach0"]
chara["Spoofed Head"]["Change Pos"].Attachment1 = chara[HatName]["Attach1"]
chara["BaseSpinner"].Position = hatPos + Vector3.new(0.2,0.1,0)
RS.RenderStepped:Connect(function()
chara[HatName].Position = chara["BaseSpinner"].Position - Vector3.new(0.1, 0.05, 0)
chara[HatName].Position = chara["BaseSpinner"].Position - Vector3.new(0.1, 0.06, 0)
chara[HatName].Position = chara["BaseSpinner"].Position - Vector3.new(0.1, 0.07, 0)
chara[HatName].Position = chara["BaseSpinner"].Position - Vector3.new(0.1, 0.06, 0)
chara[HatName].Position = chara["BaseSpinner"].Position - Vector3.new(0.1, 0.05, 0)
end)
