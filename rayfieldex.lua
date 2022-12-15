local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Pro Window",
	LoadingTitle = "Rayfield Interface Suite",
	LoadingSubtitle = "by Sirius",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
})


local Tab = Window:CreateTab("Music Effects", 4483362458) 
local Section = Tab:CreateSection("Reverb")

local Button = Tab:CreateButton({
	Name = "Create Reverb Object.",
	Callback = function()
		local reverb = Instance.new("ReverbSoundEffect")
		reverb.Parent = game:GetService("Workspace").Settings.DanceMusic
	end,
})
local Toggle = Tab:CreateToggle({
	Name = "Reverb Toggle",
	CurrentValue = false,
	Flag = "ToggleRV", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		local Workspace = game:GetService("Workspace")
		Workspace.Settings.DanceMusic.ReverbSoundEffect.Enabled = Value
	end,
})



local WLSlider = Tab:CreateSlider({
	Name = "WetLevel",
	Range = {0, 20},
	Increment = 10,
	Suffix = "",
	CurrentValue = 1,
	Flag = "WetLevel", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game:GetService("Workspace").Settings.DanceMusic.ReverbSoundEffect.WetLevel = Value
	end,
})

local Section = Tab:CreateSection("Pitch")
local PitchButton = Tab:CreateButton({
	Name = "Create Pitch Object.",
	Callback = function()
		local Pitch = Instance.new("PitchShiftSoundEffect")
		Pitch.Parent = game:GetService("Workspace").Settings.DanceMusic
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Reverb Toggle",
	CurrentValue = false,
	Flag = "TogglePitch", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		local Workspace = game:GetService("Workspace")
		Workspace.Settings.DanceMusic.PitchShiftSoundEffect.Enabled = Value
	end,
})
