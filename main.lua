local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()

rconsolename("Elite Loader")
rconsoleprint("@@WHITE@@")
rconsoleprint("Join Discord: https://discord.gg/P5mZARh7")
wait(1.5)
rconsoleprint("@@YELLOW@@")
rconsoleprint("[+] Loaded! You May Now Minimize The Console!")
wait(0.5)


local UI = Venyx.new({
    title = "Elite Hub"
})

local Themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

local LocalPlayerPage = UI:addPage({
    title = "Local Player",
    icon = 5012544693
})

local VisualsPage = UI:addPage({
    title = "Visuals",
    icon = 5012544693
})

local BlatantPage = UI:addPage({
    title = "Blatant Hacks",
    icon = 5012544693
})

local MiscPage = UI:addPage({
    title = "Misc",
    icon = 5012544693
})

local ScriptsPage = UI:addPage({
    title = "Other Scripts"
    icon = 5012544693
})

local ScriptHubSection = ScriptsPage:addSection({
    title = "Other Script Hubs"
})

local AdminScriptSection = SciptsPage:addSection({
    title = "Admin Scripts"
})

local CreditsSection = MiscPage:addSection({
    title = "Credits"
})

local AimbotSection = BlatantPage:addSection({
    title = "Aimbot"
})

local FlightSection = BlatantPage:addSection({
    title = "Player Flight"
})

local TracerSection = VisualsPage:addSection({
    title = "Tracers"
})

local ESPSection = VisualsPage:addSection({
    title = "ESP"
})

local WalkSpeedSection = LocalPlayerPage:addSection({
    title = "Walk Speed"
})

local JumpPowerSection = LocalPlayerPage:addSection({
    title = "Jump Power"
})

ScriptHubSection:addButton({
    title = "Coco Hub"
    callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/MarsQQ/CocoHub/master/CocoZHub'),true))()
    end
})

ScriptHubSection:addButton({
    title = "Dark Hub (WITH KEY BYPASSER)"
    callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/1e17/Luau-Misc/main/dark-hub-bypass/okbuddy.lua')))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init", true))()
    end
})

AdminScriptSection:addButton({
    title = "Infinite Yield"
    callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

AdminScriptSection:addButton({
    title = "Reviz Admin"
    callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/RqaZUrBZ", true))()
    end
})

CreditsSection:addButton({
    title = "Show Credits",
    callback = function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Credits"; 
            Text = "Elite Hub By AztykeDev, UI Library By GreenDeno"; 
            Icon = ""; 
            Duration = 5;
            Callback = bindableFunction;
        })
    end
})

WalkSpeedSection:addSlider({
    title = "Player Walk Speed:",
    min = 0,
    max = 500,
    default = 16,
    callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end

})

JumpPowerSection:addSlider({
    title = "Player Jump Power:",
    min = 0,
    max = 500,
    default = 50,
    callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end

})

ESPSection:addButton({
    title = "Enable ESP",
    callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/cdJscS30"))()
    end
})

TracerSection:addButton({
    title = "Enable Chams",
    callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/QH47i0JP"))()
    end
})

AimbotSection:addButton({
    title = "Enable Aimbot",
    callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/adagLJUw"))()
    end
})

AimbotSection:addButton({
    title = "Use Right Click To Aimbot!"
})

FlightSection:addButton({
    title = "Enable Flight",
    callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/TzJLewmS"))()
    end
})

FlightSection:addButton({
    title = "Use 'E' To Toggle Flight!"
})
