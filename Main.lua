game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "[Asteroid] my crappy script", Color = Color3.fromRGB(255, 165, 0), Font = Enum.Font.Merriweather, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore("ChatMakeSystemMessage",  { Text = "[Dnut] $.lucid trashy killaura", Color = Color3.fromRGB(255, 165, 0), Font = Enum.Font.Merriweather, FontSize = Enum.FontSize.Size24 } )
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Asteroid",
	LoadingTitle = "Asteroid",
	LoadingSubtitle = "by Dnut owner",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = Asteroid, -- Create a custom folder for your hub/game
		FileName = "Asteroid"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		FileName = "SiriusKey",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "Hello"
	}
})

local player = game:GetService("Players")
local lplr = player.LocalPlayer
local cam = workspace.CurrentCamera
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
local SwordCont = KnitClient.Controllers.SwordController

local aura = false
local DistVal = {["Value"] = 14}
function Aura()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.Health > 0 then
					aura = true
                    SwordCont:swingSwordAtMouse()
end
end
end
end
end

local KillauraEnabled = false


local Tab = Window:CreateTab("Blantant", 4483362458) -- Title, Image

	local Toggle = Tab:CreateToggle({
		Name = "trashy Killaura",
		CurrentValue = false,
		Flag = "Killaura", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
    if KillauraEnabled == false then
      KillauraEnabled = true
      repeat wait(0.1)
        Aura()
      until KillauraEnabled == false
      else
      KillauraEnabled = false
      end
		end,
	})

local Button = Tab:CreateButton({
	Name = "Inf jump",
	Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
	end,
})


local Button = Tab:CreateButton({
	Name = "fly",
	Callback = function()
        workspace.Gravity = 0
	end,
})


local Button = Tab:CreateButton({
	Name = "fly disable",
	Callback = function()
        workspace.Gravity = 192
	end,
})


local Button = Tab:CreateButton({
	Name = "speed (hold left shift)",
	Callback = function()
        local Player = game:GetService'Players'.LocalPlayer;
        local UIS = game:GetService'UserInputService';
        UIS.InputBegan:connect(function(UserInput)
                if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.LeftShift then
                    _G.Running = true
                        while wait(0.0000000000000000000000000000000000000000000001) and _G.Running == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0.1
        end
                end
        end)
        UIS.InputEnded:connect(function(UserInput)
                if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.LeftShift then
                        _G.Running = false
                end
        end)
	end,
})


local Tab = Window:CreateTab("World", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
	Name = "antivoid",
	Callback = function()
        antivoidpart = Instance.new("Part", workspace)
        antivoidpart.Name = "AntiVoid"
        antivoidpart.Size = Vector3.new(2100, 0.5, 2000)
        antivoidpart.Position = Vector3.new(160.5, 25, 247.5)
        antivoidpart.Transparency = 0.4
        antivoidpart.Anchored = true
	end,
})






















Rayfield:LoadConfiguration()
