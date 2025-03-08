repeat
	task.wait()
until game:IsLoaded()


---====== Load Discord inviter ======---
local discordInviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()

---====== Join Discord server ======---
discordInviter.Join("https://discord.com/invite/ScyllaHub")

--[[local allowedPlaces = {
    [18668065416] = true
}

if not allowedPlaces[game.PlaceId] then
    game.Players.LocalPlayer:Kick("Scylla doesn't support this game | Join our discord for more information")
end]]


makefolder("ScyllaKey")
local key_path = "SycllaKey/PremiumKey.txt"
script_key = script_key or isfile(key_path) and readfile(key_path) or nil

local Cloneref = cloneref or clonereference or function(instance)
	return instance
end
local Players, HttpService = Cloneref(game:GetService("Players")), Cloneref(game:GetService("HttpService"))
local Request = http_request or request or syn.request or http

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local API = loadstring(game:HttpGet("https://sdkAPI-public.luarmor.net/library.lua"))()
if game.placeId == 18668065416 then
    API.script_id = "14d860e5b3f0a71c45ac877e07177807"
else
    game.Players.LocalPlayer:Kick("Scylla doesn't support this game | Join our discord for more information")
end



local function notify(title, content, duration)
	UI:Notify({ Title = title, Content = content, Duration = duration or 8 })
end

local function checkKey(input_key)
	local status = API.check_key(input_key or script_key)
	if status.code == "KEY_VALID" then
		script_key = input_key or script_key
		writefile(key_path, script_key)
        API.load_script()
        repeat
            task.wait()
        until UI:Destroy()
	elseif status.code:find("KEY_") then
		local messages = {
			KEY_HWID_LOCKED = "Key linked to a different HWID. Please reset it using our bot",
			KEY_INCORRECT = "Key is incorrect",
			KEY_INVALID = "Key is invalid",
		}
		notify("Key Check Failed", messages[status.code] or "Unknown error")
	else
		Players.LocalPlayer:Kick("Key check failed: " .. status.message .. " Code: " .. status.code)
	end
end

if script_key then
	checkKey()
end


local Window = UI:CreateWindow({
	Title = "Scylla",
	SubTitle = "Premium",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 320),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.End,
})

local Tabs = { Main = Window:AddTab({ Title = "Key", Icon = "" }) }

local Input = Tabs.Main:AddInput("Key", {
	Title = "Enter Key:",
	Default = script_key or "",
	Placeholder = "Example: agKhRikQP..",
	Numeric = false,
	Finished = false,
})

Tabs.Main:AddButton({
	Title = "Buy Key",
	Callback = function()
		setclipboard("https://discord.gg/ScyllaHub")
		notify("Copied To Clipboard", "Copied Discord To Clipboard", 16)
	end,
})

Tabs.Main:AddButton({
	Title = "Check Key",
	Callback = function()
		checkKey(Input.Value)
	end,
})

Tabs.Main:AddButton({
	Title = "Join Discord",
	Callback = function()
		setclipboard("https://discord.gg/ScyllaHub")
		notify("Copied To Clipboard", "Discord Server Link has been copied to your clipboard", 16)
        local discordInviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
        discordInviter.Join("https://discord.com/invite/ScyllaHub")
	end,
})

Window:SelectTab(1)
notify("Scylla", "Loader Has Loaded Successfully")

repeat
	task.wait()
until getgenv().ScyllaKey
