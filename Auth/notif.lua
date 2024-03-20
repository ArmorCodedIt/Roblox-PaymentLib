notifys = 10
function Notify(title, text)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = title,
	Text = text
})
end
function NotifyWithIcon(title, text, icon)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = text,
	Text = text,
  Icon = icon
})
end
if prv then
  if prv == true then
    Notify("Loaded", "Notify Library Loaded!")
  end
end
