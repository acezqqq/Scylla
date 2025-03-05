repeat
	task.wait()
until game:IsLoaded()


local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

local vynixuModules = {
    Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
}
local assets = {
    DiscordInvitePrompt = LoadCustomInstance("https://github.com/RegularVynixu/Utilities/raw/main/Discord%20Inviter/Assets/DiscordInvitePrompt.rbxm"),
    NotificationSound = LoadCustomAsset("https://github.com/RegularVynixu/Utilities/raw/main/Discord%20Inviter/Assets/Notification.mp3")
}
local module = {}

local function getInviteCode(sInvite)
    for i = #sInvite, 1, -1 do
        local char = sInvite:sub(i, i)
        if char == "/" then
            return sInvite:sub(i + 1, #sInvite)
        end
    end
    return sInvite
end

local function getInviteData(sInvite)
    local success, result = pcall(function()
        return HttpService:JSONDecode(request({
            Url = "https://ptb.discord.com/api/invites/" .. getInviteCode(sInvite),
            Method = "GET"
        }).Body)
    end)
    if not success then
        warn("Failed to get invite data:\n" .. result)
        return
    end
    return success, result
end

local function getInitials(sInvite)
    local initials = sInvite:sub(1, 1)
    for i = 1, #sInvite do
        local char = sInvite:sub(i, i)
        if char == " " then
            initials ..= sInvite:sub(i + 1, i + 1)
        end
    end
    return initials:sub(1, math.min(#initials, 3))
end

local function make(class, properties)
    local object = Instance.new(class)
    for i, v in properties do
        object[i] = v
    end
    return object
end

local function toggleShowPrompt(promptGui, bool)
    local frame = promptGui.Holder
    local serverIcon = frame.ServerIcon
    local serverInitials = serverIcon.ServerInitials
    local invited = frame.Invited
    local serverName = frame.ServerName
    local accept = frame.Accept
    local ignore = frame.Ignore
    
    if bool then
        frame.Visible = true
        TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0.175, 0, 0.175, 0)}):Play()
        TweenService:Create(frame.UICorner, TweenInfo.new(1, Enum.EasingStyle.Quint), {CornerRadius = UDim.new(0, 8)}):Play()
        task.wait(1)
        TweenService:Create(serverIcon, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundTransparency = 0, ImageTransparency = 0}):Play()
        TweenService:Create(serverInitials, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
        task.wait(0.1)
        TweenService:Create(invited, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
        task.wait(0.1)
        TweenService:Create(serverName, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
        task.wait(0.1)
        TweenService:Create(accept, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
        task.wait(0.1)
        TweenService:Create(ignore, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
        task.wait(1)
    else
        TweenService:Create(ignore, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
        task.wait(0.1)
        TweenService:Create(accept, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
        task.wait(0.1)
        TweenService:Create(serverName, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
        task.wait(0.1)
        TweenService:Create(invited, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
        task.wait(0.1)
        TweenService:Create(serverIcon, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundTransparency = 1, ImageTransparency = 1}):Play()
        TweenService:Create(serverInitials, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
        task.wait(1)
        TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new()}):Play()
        TweenService:Create(frame.UICorner, TweenInfo.new(1, Enum.EasingStyle.Quint), {CornerRadius = UDim.new(1, 0)}):Play()
        task.wait(1)
        frame.Visible = false
    end
end

module.Prompt = function(inviteTable)
    assert(type(inviteTable) == "table", "<table> Invalid invite table")
    assert(type(inviteTable.name) == "string", "<string> Invalid invite name")
    assert(type(inviteTable.invite) == "string", "<string> Invalid invite code")
    local name = inviteTable.name
    local invite = inviteTable.invite
    local success, result = getInviteData(invite)
    if success and result then
        local vanity = getInviteCode(invite)
        local promptGui = assets.DiscordInvitePrompt:Clone()
        if promptGui then
            local holder = promptGui.Holder
            local serverIcon = holder.ServerIcon
            local serverInitials = serverIcon.ServerInitials
            local invited = holder.Invited
            local serverName = holder.ServerName
            local accept = holder.Accept
            local ignore = holder.Ignore

            holder.Size = UDim2.new()
            holder.UICorner.CornerRadius = UDim.new(1, 0)
            serverName.Text = name
            accept.Text = `Join <b>{name}</b>`
            
            if result.guild.icon ~= nil then
                serverIcon.Image = LoadCustomAsset(`https://cdn.discordapp.com/icons/{result.guild.id}/{result.guild.icon}.png`)
            else
                serverInitials.Text = getInitials(name)
                serverInitials.Visible = true
            end

            for _, c in holder:GetDescendants() do
                if c.ClassName == "TextLabel" or c.ClassName == "TextButton" then
                    c.BackgroundTransparency = 1
                    c.TextTransparency = 1
                elseif c.ClassName == "ImageLabel" then
                    c.ImageTransparency = 1
                end
            end

            promptGui.Parent = CoreGui
            toggleShowPrompt(promptGui, true)

            local connections = {}
            local function dismiss(join)
                for _, c in connections do
                    c:Disconnect()
                end
                if join then
                    module.Join(invite)
                end
                toggleShowPrompt(promptGui, false)
            end

            connections.acceptEnter = accept.MouseEnter:Connect(function()
                TweenService:Create(accept, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(71, 82, 196)}):Play()
            end)
            connections.acceptLeave = accept.MouseLeave:Connect(function()
                TweenService:Create(accept, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}):Play()
            end)
            connections.acceptActivated = accept.Activated:Connect(function()
                dismiss(true)
            end)
            do
                local text = ignore.Text
                connections.ignoreEnter = ignore.MouseEnter:Connect(function()
                    ignore.Text = `<u>{text}</u>`
                end)
                connections.ignoreLeave = ignore.MouseLeave:Connect(function()
                    ignore.Text = text
                end)
                connections.ignoreActivated = ignore.Activated:Connect(function()
                    dismiss(false)
                end)
            end
        end
    end
end

module.Join = function(sInvite)
    assert(type(sInvite) == "string", "<string> Invalid invite provided")
    local success, result = getInviteData(sInvite)
    if success and result then
        request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = HttpService:JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = result.code
                },
                nonce = HttpService:GenerateGUID(false)
            })
        })
        local sound = Instance.new("Sound")
        sound.Volume = 1
        sound.PlayOnRemove = true
        sound.SoundId = assets.NotificationSound
        sound.Parent = CoreGui
        sound:Destroy()
    end
end

local inviteTable = {
    name = "Scylla | ScriptHub",
    invite = "https://discord.gg/TBxcrZTdaW"
}

module.Prompt(inviteTable)

local allowedPlaces = {
    [8075399143] = true,
    [9164271501] = true
}

if not allowedPlaces[game.PlaceId] then
    game.Players.LocalPlayer:Kick("Scylla doesn't support this game | Join our discord for more information")
end


makefolder("Scylla")
local key_path = "Syclla/Key.txt"
script_key = script_key or isfile(key_path) and readfile(key_path) or nil

local Cloneref = cloneref or clonereference or function(instance)
	return instance
end
local Players, HttpService = Cloneref(game:GetService("Players")), Cloneref(game:GetService("HttpService"))
local Request = http_request or request or syn.request or http

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local API = loadstring(game:HttpGet("https://sdkAPI-public.luarmor.net/library.lua"))()
if game.placeId == 8075399143 then
    API.script_id = "1ddf34ee1c34ac743947510b1f3de9b0"
elseif game.placeId == 9164271501 then
    API.script_id = "ef9455c5229388090b6d981daf114ff8"
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
        UI:Destroy()
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
	SubTitle = "Loader",
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
	Title = "Get Key (Linkvertise)",
	Callback = function()
		setclipboard("https://ads.luarmor.net/get_key?for=Scylla_Scripthub_Linkvertise-PDevdGuoyxIP")
		notify("Copied To Clipboard", "Ad Reward Link has been copied to your clipboard", 16)
	end,
})

Tabs.Main:AddButton({
	Title = "Get Key (Lootlabs)",
	Callback = function()
		setclipboard("https://ads.luarmor.net/get_key?for=Scylla_Scripthub_Lootlabs-ZqdQzOWDhpSs")
		notify("Copied To Clipboard", "Ad Reward Link has been copied to your clipboard", 16)
	end,
})

Tabs.Main:AddButton({
	Title = "Get Key (Workink)",
	Callback = function()
		setclipboard("https://ads.luarmor.net/get_key?for=Scylla_Scripthub_Workink-qsCyYutvqNcX")
		notify("Copied To Clipboard", "Ad Reward Link has been copied to your clipboard", 16)
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
		setclipboard("https://discord.gg/TBxcrZTdaW")
		notify("Copied To Clipboard", "Discord Server Link has been copied to your clipboard", 16)
		Request({
			Url = "http://127.0.0.1:6463/rpc?v=1",
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json", ["origin"] = "https://discord.com" },
			Body = HttpService:JSONEncode({ args = { code = "TBxcrZTdaW" }, cmd = "INVITE_BROWSER", nonce = "." }),
		})
	end,
})

Window:SelectTab(1)
notify("Scylla", "Loader Has Loaded Successfully")

repeat
	task.wait()
until getgenv().Scylla
UI:Destroy()
