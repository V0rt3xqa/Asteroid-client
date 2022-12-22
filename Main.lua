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


local KillauraEnabled = false


local Tab = Window:CreateTab("Blantant", 4483362458) -- Title, Image

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
