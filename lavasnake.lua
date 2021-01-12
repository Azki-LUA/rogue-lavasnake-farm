-- trash code, work in progress

















repeat wait() until game:IsLoaded()
pcall(function()
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("StartMenu")
wait(1)
firesignal(game:GetService'Players'.LocalPlayer.PlayerGui.StartMenu.Choices.Play.MouseButton1Click)
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("CurrencyGui")
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("StatGui")
wait(3)
local tweenservice = game:GetService'TweenService'
local player = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
local players = game:GetService'Players'
local lp = game:GetService'Players'.LocalPlayer
local live = game:GetService'Workspace'.Live
local info = TweenInfo.new(
    1,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out,
    0,
    false,
    0)
local slowinfo = TweenInfo.new(
    3,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out,
    0,
    false,
    0)
getgenv().Trinkets={}
local Stepped=game:service'RunService'.Stepped
local LocalPlayer=game:service'Players'.LocalPlayer
local Trinkets=getgenv().Trinkets
local function CheckTrinket(C) -- not mine
    if C:IsA'BasePart' and C.Size.Magnitude<2.8 then
        local CDPart=C:FindFirstChildOfClass'Part'
        if CDPart then
            local CD=CDPart:FindFirstChildOfClass'ClickDetector'
            if CD then
                local ESP
                if C:IsA'MeshPart' and C.MeshId=='rbxassetid://4103271893' then
                    print('a')
                else
                    print('b')
                end
                Trinkets[#Trinkets+1]={CDPart,CD,ESP}
            end
        end
    end
end
coroutine.wrap(function()
    while wait(.12) do
        local Char=LocalPlayer.Character
        if Char then
            local Head=Char:FindFirstChild'Head'
            if Head then
                for I=1,#Trinkets do
                    local Trinket=Trinkets[I]
                    local Magnitude=(Head.Position-Trinket[1].Position).Magnitude
                    if Magnitude<Trinket[2].MaxActivationDistance+.5 then
                        fireclickdetector(Trinket[2])
                    end
                end
            end
        end
    end
end)()
for i,v in ipairs(workspace:GetChildren()) do
    CheckTrinket(v)
end
workspace.ChildAdded:Connect(function(C)
    Stepped:Wait()
    CheckTrinket(C)
end)
function modcheck()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name == "Lord_Rozen" or v.Name == "Undetected_Lineage" or v.Name == "pyfrog" or v.Name == "jaxroguealt" or v.Name == "SagittaSoulaResolve" or v.Name == "off_yourself" or v.Name == "Yuire1234" or v.Name == "leonjoh" or v.Name == "ZaeoMR" or v.Name == "CharDied" or v.Name == "Orchamy" or v.Name == "Po0k" or v.Name == "baneH1" or v.Name == "devorris" or v.Name == "RushSin" or v.Name == "V_alac" or v.Name == "infektedskrpion" or v.Name == "Shirafune" or v.Name == "condha" or v.Name == "huuc" or v.Name == "b2issy" or v.Name == "TheTrueCrab" or v.Name == "pugsmauro" or v.Name == "zurbleh" or v.Name == "Aceleaff" or v.Name == "b1issy" or v.Name == "uninvert" or v.Name == "willv_v" or v.Name == "darthrevan0909" or v.Name == "Rhaastification" or v.Name == "4Data" or v.Name == "kal_vo" or v.Name == "SheeveUnity" or v.Name == "Infernism" or v.Name == "PrimordialFlash" or v.Name == "rugrat447" or v.Name == "Corrupted_Dream" or v.Name == "Divinos" or v.Name == "zopenIlip" or v.Name == "zopenLlip" or v.Name == "zopenLIip" or v.Name == "penguinilinguini" or v.Name == "b_lademaster" or v.Name == "NevermindLichy" or v.Name == "Forefathers" or v.Name == "gobble234" or v.Name == "nicey13" or v.Name == "NooRool" or v.Name == "Byagoona" or v.Name == "timothy_teapot" or v.Name == "AvanClaer" or v.Name == "Cizod" or v.Name == "Laelilith" or v.Name == "Chadthekeyblade" or v.Name == "Melon_Sensei" or v.Name == "Ragoozer" or v.Name == "Arch_Mage" or v.Name == "leonjoh12" or v.Name == "leonjoh4" or v.Name == "leonjoh5" or v.Name == "leonjoh6" or v.Name == "leonjoh7" or v.Name == "leonjoh8" or v.Name == "leonjoh9" or v.Name == "Grand_Archives" or v.Name == "T0LKA" or v.Name == "searoot" or v.Name == "melonbeard" or v.Name == "MassRelays" or v.Name == "Nilvaat" or v.Name == "BrittMarieV5" or v.Name == "NevermindCreator" or v.Name == "NevermindInsanity" or v.Name == "Auchura" or v.Name == "astro_train" or v.Name == "BrittMarieV15" or v.Name == "Fallen_Time" or v.Name == "c_amomaster" or v.Name == "IsraeliMilitantYosef" then
            game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Lava Snake BOT",
        Text = "Mod detected. Server hopping...",
        Duration = 9e9})
        game:GetService("TeleportService"):Teleport(3016661674, game:GetService("Players").LocalPlayer)
        wait()
    game:GetService("Players").LocalPlayer:Kick("MOD DETECTED.")
    end
    end
end
for i,v in pairs(players:GetChildren()) do
    if v.leaderstats.LastName.Value == "Mudock" or v.leaderstats.LastName.Value == "Mudockfat" or v.leaderstats.LastName.Value == "Archfat" or v.leaderstats.LastName.Value == "Female" or v.leaderstats.LastName.Value == "Shallow" or v.leaderstats.LastName.Value == "Regis" or v.leaderstats.LastName.Value == "Nidus" or v.leaderstats.LastName.Value == "Vyria" or v.leaderstats.LastName.Value == "Malkavian" or v.leaderstats.LastName.Value == "mudock" or v.leaderstats.LastName.Value == "Gallica" then
        players.LocalPlayer:Kick("MOD DETECTED.")
end
end
local middle = {CFrame = CFrame.new(3917.88232, 718.293884, -790.096924)}
local playmiddle = tweenservice:Create(player, slowinfo, middle)
local ScriptContext = game:GetService("ScriptContext")
for i,v in next, getconnections(ScriptContext.Error) do
    v:Disable()
end
local lp = game:service'Players'.LocalPlayer
local old
old = hookfunction(Instance.new'RemoteEvent'.FireServer, function(self,...)
    local args = {...}
    if self.Parent == lp.Character.CharacterHandler.Remotes then
        if #args == 2 and typeof(args[2]) == "table" then
            return nil
        end
    end
    return old(self,...)
end)
function distancecheck()
for i, v in next, live:GetChildren() do
    local character1 = game:GetService("Players").LocalPlayer.Character
    if v ~= character1 and character1 and character1:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - character1.HumanoidRootPart.Position).Magnitude < 400 then
        game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Lava Snake BOT",
    Text = "Someone is close. Server hopping...",
    Duration = 9e9
})
      game:GetService("TeleportService"):Teleport(3016661674, game:GetService("Players").LocalPlayer)
      wait()
      game:GetService("Players").LocalPlayer:Kick("Someone is close. Server hopping...")
    end
end
end
local GUI = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local HOP = Instance.new("TextButton")
    GUI.Parent = game.CoreGui
    GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Frame.Parent = GUI
    Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    Frame.BackgroundTransparency = 1.000
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.Position = UDim2.new(0.874414265, 0, 0.897533178, 0)
    Frame.Size = UDim2.new(0, 134, 0, 54)
    
    HOP.Name = "HOP"
    HOP.Parent = Frame
    HOP.BackgroundColor3 = Color3.fromRGB(40, 39, 39)
    HOP.Position = UDim2.new(-0.798507452, 0, 0.0740741491, 0)
    HOP.Size = UDim2.new(0, 200, 0, 50)
    HOP.Font = Enum.Font.GothamBlack
    HOP.Text = "EMERGENCY HOP"
    HOP.TextColor3 = Color3.fromRGB(255, 255, 255)
    HOP.TextSize = 14.000
    HOP.MouseButton1Down:connect(function()
        game:GetService'TeleportService':Teleport(3016661674, game:GetService'Players'.LocalPlayer)
        wait(1)
        game:GetService'Players'.LocalPlayer:Kick("EMERGENCY HOP")
    end)
game:GetService("StarterGui"):SetCore("PromptBlockPlayer", game.Players:GetPlayers()[math.random(2,#game.Players:GetPlayers())])
wait()
mousemoveabs(648, 486)
mousemoveabs(647, 487)
mousemoveabs(646, 488)
mousemoveabs(648, 487)
wait(0.4)
mouse1click()
wait(0.4)
mousemoveabs(881, 649)
mousemoveabs(880, 648)
mousemoveabs(880, 647)
mousemoveabs(879, 650)
wait(0.2)
mouse1click()
wait(0.2)
mouse1click()
distancecheck()
wait()
function illucheck()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    if v.Backpack:FindFirstChild'Observe' then
        game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Lava Snake BOT",
    Text = "ILLUSIONIST DETECTED. SERVER HOPPING IN 2 SECONDS...",
    Duration = 9e9
})
playmiddle:Play()
playmiddle.Completed:wait()
repeat wait() until not lp.Character:FindFirstChild("Danger")
game:GetService'TeleportService':Teleport(3016661674, game:GetService'Players'.LocalPlayer)
wait()
game:GetService'Players'.LocalPlayer:Kick("Illusionist detected. Server hopping...")
end
end
end
if game:GetService'Players'.LocalPlayer.Backpack:FindFirstChild("Philosopher's Stone") then
    local msg = "Someone just found a " .. "`" .. "Philosopher's Stone" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Cloak") then
    local msg = "Someone just found a " .. "`" .. "Spider Cloak" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Howler Friend") then
    local msg = "Someone just found a " .. "`" .. "Howler Friend" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Amulet Of The White King") then
    local msg = "Someone just found a " .. "`" .. "Amulet Of The White King" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Scroom Key") then
    local msg = "Someone just found a " .. "`" .. "Scroom Key" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fairfrozen") then
    local msg = "Someone just found a " .. "`" .. "Fairfrozen" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Lannis Amulet") then
    local msg = "Someone just found a " .. "`" .. "Lannis Amulet" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rift Gem") then
    local msg = "Someone just found a " .. "`" .. "Rift Gem" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Down") then
    local msg = "Someone just found a " .. "`" .. "Phoenix Down" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Essence") then
    local msg = "Someone just found a " .. "`" .. "Ice Essence" .. "`" .. " with the Sigil BOT."
    local url = "https://discord.com/api/webhooks/787443693832896554/EcFeJKCX3N6w2yFnJAFOO2HVH0VDegeVMfS6PS-KQ87OuUEH2GrpSqlu8BWZyQkIBdnv"
    syn.request({Url = url, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode({["content"]=msg})})
end
pcall(function()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Character:FindFirstChild("Observe") then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Lava Snake BOT",
                Text = "ILLUSIONIST DETECTED. SERVER HOPPING IN 2 SECONDS...",
                Duration = 9e9
            })
        playmiddle:Play()
        playmiddle.Completed:wait()
        game:GetService("TeleportService"):Teleport(3016661674, game:GetService("Players").LocalPlayer)
        wait()
        game:GetService("Players").LocalPlayer:Kick("Illusionist detected. Server hopping...")
end
end
end)
local plr = game:GetService("Players").LocalPlayer
pcall(function()
        for i,v in pairs (plr.Backpack:GetChildren()) do
                if v.Name == 'Night Stone' then
                            repeat wait() until not plr.Character:FindFirstChild'Danger'
                            plr:Kick("Found a Night Stone.")
                end
                if v.Name == 'Spider Cloak' then
                            repeat wait() until not plr.Character:FindFirstChild'Danger'
                            plr:Kick'Found a Spider Cloak.'
                end
                if v.Name == 'Howler Friend' then
                            repeat wait() until not plr.Character:FindFirstChild'Danger'
                            plr:Kick'Found a Howler Friend.'
                end
                if v.Name == 'Amulet Of The White King' then
                            repeat wait() until not plr.Character:FindFirstChild'Danger'
                            plr:Kick'Found an Amulet Of The White King.'
                end
                if v.Name == 'Scroom Key' then
                            repeat wait() until not plr.Character:FindFirstChild'Danger'
                            plr:Kick'Found a Scroom Key.'
                end
                if v.Name == 'Lannis Amulet' then
                    repeat wait() until not plr.Character:FindFirstChild'Danger'
                    plr:Kick'Found a Lannis Amulet.'
                end
                if v.Name == 'Philosophers Stone' then
                    repeat wait() until not plr.Character:FindFirstChild'Danger'
                    plr:Kick'Found a Philosophers Stone'
                end
                if v.Name == 'Rift Gem' then
                    repeat wait() until not plr.Character:FindFirstChild'Danger'
                    plr:kick'Found a Rift Gem.'
                end
                if v.Name == 'Fairfrozen' then
                            repeat wait() until not plr.Character:FindFirstChild'Danger'
                            plr:Kick'Found a Fairfrozen.'
                end
                
        end
        end)
illucheck()
wait()
playmiddle:Play()
playmiddle.Completed:wait()
wait(0.4)
local snake = {CFrame = CFrame.new(4013.12231, 439.293945, -986.599976)}
local playsnake = tweenservice:Create(player, slowinfo, snake)
playsnake:Play()
playsnake.Completed:wait()
wait(7.5)
local loot1 = {CFrame = CFrame.new(4030.09424, 439.293945, -999.899414)}
local playloot1 = tweenservice:Create(player, info, loot1)
playloot1:Play()
playloot1.Completed:wait()
local loot2 = {CFrame = CFrame.new(4005.34521, 439.293945, -999.906494)}
local playloot2 = tweenservice:Create(player, info, loot2)
playloot2:Play()
playloot2.Completed:wait()
wait(0.4)
player.CFrame = CFrame.new(3995.64404, 439.293945, -991.669373)
wait(0.6)
player.CFrame = CFrame.new(3991.9502, 439.293945, -1005.91833)
wait(0.6)
player.CFrame = CFrame.new(3978.39771, 439.293945, -997.431885)
wait(1)
playsnake:Play()
playsnake.Completed:wait()
wait(0.4)
playmiddle:Play()
playmiddle.Completed:wait()
playmiddle:Play()
playmiddle.Completed:wait()
 game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Lava Snake BOT",
    Text = "Finished looting. Server hopping...",
    Duration = 9e9
})
local LP = game:GetService'Players'.LocalPlayer
repeat wait() until not LP.Character:FindFirstChild'Danger'
game:GetService'TeleportService':Teleport(3016661674, game:GetService("Players").LocalPlayer)
game:GetService'Players'.LocalPlayer:Kick("Server hopping...")
end)
