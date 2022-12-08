local Rep = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local Chara = Plr.Character
local RS = game:GetService("RunService")
local WP = game:GetService("Workspace")
function let(var1, var2)
setmetatable({
  local _Input = function cloneCharacter()
    Chara:Clone().Parent = Rep
return Rep.Chara.Parent
end

},{
  local _index = function Replicate(Self, Index)
  if (var1==var2) then
    return "Error_Vars_Same"
  end
  var1 = var2
end
})
end
RS.RenderStepped:Connect(function()
getenv().Frames = WP:GetRealPhysicsFPS()
if (getenv().Frames<55) then
  os.exit()
end
end)
local tablet = setmetatable({}, {
  _index = function Track(Self, Index)

  end
})
function Target()
Instance.new("Part", Rep)
Chara["Part"].Name = "Left Leg Tax"
Instance.new("Part", Rep)
Chara["Part"].Name = "Right Leg Tax"
Instance.new("Part", Rep)
Chara["Part"].Name = "Left Arm Tax"
Instance.new("Part", Rep)
Chara["Part"].Name = "Right Arm Tax"
end
ll=Chara["Left Leg Tax"]:Clone()
rl=Chara["Right Leg Tax"]:Clone()
la=Chara["Left Arm Tax"]:Clone()
ra=Chara["Right Arm Tax"]:Clone()
Rep.SayMessageRequest.OnServerEvent:Connect(function(plr)
CharLL = ll.Parent = Rep
CharRL = rl.Parent = Rep
CharLA = la.Parent = Rep
CharRA = ra.Parent = Rep
CharLL.Parent = Chara
CharRL.Parent = Chara
CharLA.Parent = Chara
CharRa.Parent = Chara
end)
local Anims = {
    ["Idle"] = PreloadAnimation(10874066154),
    ["Walk"] = PreloadAnimation(10874097170),
    ["Run"] = PreloadAnimation(10874133190),
    ["Jump"] = PreloadAnimation(619542888),
    ["Fall"] = PreloadAnimation(2510233257)
}

wait(1)
local Connections = {}

Mouse = LP:GetMouse()
local Dancing, Running = false, false

local StopAll = function()
    for K, V in next, Anims do
        if V["Stopped"] ~= true then
            V:Stop()
        end
    end
end

Anims["Idle"]:Play()
Dancing = false
Anims["Walk"].Stopped = true
Anims["Run"].Stopped = true

Connections["Run"] =
    Humanoid["Running"]:Connect(
    function(Speed)
        if Speed > 6 and Dancing ~= true and Anims["Walk"].Stopped ~= false and runnning ~= true then
            Anims["Idle"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Walk"]:Play()
        elseif Speed < 5 and Dancing ~= true and Anims["Walk"].Stopped ~= true and runnning ~= true then
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Idle"]:Play()
        elseif Speed < 5 and Dancing ~= true and Anims["Jump"].Stopped ~= true or Anims["Fall"].Stopped ~= true then
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Idle"]:Play()
        end
    end
)
Connections["Jumping"] =
    Humanoid["Jumping"]:Connect(
    function(active)
        if active and Dancing ~= true and Anims["Jump"].Stopped ~= false then
            Anims["Idle"]:Stop()
            Anims["Walk"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Jump"]:Play()
        end
    end
)
Connections["FreeFalling"] =
    Humanoid["FreeFalling"]:Connect(
    function(active)
        if active and Dancing ~= true and Anims["Jump"].Stopped ~= false then
            Anims["Idle"]:Stop()
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Run"]:Stop()
            Anims["Fall"]:Play()
        end
    end
)

Mouse.KeyDown:connect(
    function(key)
        if key:lower() == string.char(48) then --string.char(48) is just shift
            if Humanoid and Anims["Walk"].Stopped ~= true then
                Anims["Walk"]:Stop()
                Anims["Jump"]:Stop()
                Anims["Fall"]:Stop()
                Anims["Idle"]:Stop()
                Anims["Run"]:Play()
                runnning = true
                Humanoid.WalkSpeed = 26
            end
        end
    end
)

--When button is lifted
Mouse.KeyUp:connect(
    function(key)
        if key:lower() == string.char(48) then --string.char(48) is just shift
            if Humanoid then
                runnning = false
                Humanoid.WalkSpeed = 16
            end
        end
    end
)

wait(1)
local Punc = function(Id, Key, Speed)
    Speed = Speed or 1
    local Animation = PreloadAnimation(Id)
    table.insert(Anims, Animation)
    local V =
        UIS.InputBegan:Connect(
        function(Input, P)
            if Input.KeyCode == Enum.KeyCode[Key] and P ~= true then
                if Dancing ~= true then
                    Dancing = true
                    StopAll()
                    wait(.1)
                    Animation:Play()
                    Animation["Speed"] = Speed
                else
                    Dancing = false
                    StopAll()
                    wait(.1)
                    Anims["Idle"]:Play()
                end
            end
        end
    )
end

Rep.SayMessageRequest:FireServer("","All")
