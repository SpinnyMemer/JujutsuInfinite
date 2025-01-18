local Children_n = #(game:GetService("Players"):GetChildren())

local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()

if Children_n > 1 then
   local CustomKick = loadstring(game:HttpGet('https://raw.githubusercontent.com/SpinnyMemer/CustomLibraries/refs/heads/main/KickLibrary.lua'))()

    CustomKick:RemovePlayer("Fragment - https://discord.gg/qwHZVt8PNg", "Script initiated kick due to more than 1 player. Please host a solo boss lobby for the script to work!")
end

repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):WaitForChild("Frame"):FindFirstChild("BottomMiddle").Divider.Visible == true

local VirtualInputManager = game:GetService("VirtualInputManager")

local HumanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

HumanoidRootPart.CFrame = workspace.Objects.Spawns.BossSpawn.CFrame

    local plr = game.Players.LocalPlayer
    
    local msg = {
        ["username"] = "Fragment", 
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/1325080674126008372/1330082788371726366/e1d18bca50df9722e7cda458b14e906a.png?ex=678cafa0&is=678b5e20&hm=27b4d75000dd21502dfe539ca592aee6cb587b57c0311cb41822ea5fb6e3f094&",
        ["content"] = "",  -- or ""
        ["embeds"] = {{
            ["title"] = "Fragment - Jujutsu Infinite",
            ["description"] = "Auto Boss",
            ["type"] = "rich",
            ["color"] = tonumber(47103),
            ["fields"] = {
                {
                    ["name"] = "Status",
                    ["value"] = "Boss has successfully been killed.",
                    ["inline"] = false
                },
                {
                    ["name"] = "Hopping",
                    ["value"] = "Collected reward and initiated server hop.",
                    ["inline"] = false
                }
            },
            ["footer"] = {
                ["icon_url"] = "https://cdn.discordapp.com/attachments/1325080674126008372/1330082788371726366/e1d18bca50df9722e7cda458b14e906a.png?ex=678cafa0&is=678b5e20&hm=27b4d75000dd21502dfe539ca592aee6cb587b57c0311cb41822ea5fb6e3f094&",
                ["text"] = "Fragment (" .. os.date("%X") .. ")"
            }
        }}
    }
    
    local function SendWebHook()
        local success, response = pcall(function()
            request({
                Url = getgenv().Webhook,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game:GetService("HttpService"):JSONEncode(msg)
            })
        end)
        
        if not success then
            warn("Failed to send webhook:", response)
        end
    end

workspace:WaitForChild("Objects"):WaitForChild("Mobs").ChildAdded:Connect(function(child)

    if child.Name == "Ocean Curse" then
       NotificationLibrary:SendNotification("Info", "Ocean Curse detected! using Normal Method", 5)

       local playerPosition = child:WaitForChild("HumanoidRootPart").Position
       local forwardDirection = child:WaitForChild("HumanoidRootPart").CFrame.UpVector
       local FarmPos = CFrame.new(playerPosition + forwardDirection * 3)
       while task.wait() do
       game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = FarmPos 
       if game.Players.LocalPlayer.Backpack:FindFirstChild("Skills") then
          game.Players.LocalPlayer.Backpack:WaitForChild("Skills").Parent = game.Players.LocalPlayer.Character
       end
       if child:WaitForChild("Humanoid").Health < 10000 then
            child:WaitForChild("Humanoid").Health = 0
            repeat wait() until workspace.Objects.Drops:FindFirstChild("Chest")
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(false, "E", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "BackSlash", false, game)
            VirtualInputManager:SendKeyEvent(false, "BackSlash", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "BackSlash", false, game)
            VirtualInputManager:SendKeyEvent(false, "BackSlash", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "BackSlash", false, game)
            VirtualInputManager:SendKeyEvent(false, "BackSlash", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)

           SendWebHook()

            return 
       end

       local args = {
    [1] = "Divergent Fist"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Combat"):WaitForChild("Skill"):FireServer(unpack(args))

local args = {
    [1] = "Cursed Reinforcement"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Combat"):WaitForChild("Skill"):FireServer(unpack(args))


       VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 1)
       VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 1)
    end    
    else

       child:WaitForChild("Humanoid").Health = 0
       repeat wait() until workspace.Objects.Drops:FindFirstChild("Chest")
            wait(1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(false, "E", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "BackSlash", false, game)
            VirtualInputManager:SendKeyEvent(false, "BackSlash", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "BackSlash", false, game)
            VirtualInputManager:SendKeyEvent(false, "BackSlash", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "BackSlash", false, game)
            VirtualInputManager:SendKeyEvent(false, "BackSlash", false, game)
            wait(0.5)
            VirtualInputManager:SendKeyEvent(true, "Return", false, game)
            VirtualInputManager:SendKeyEvent(false, "Return", false, game)

            SendWebHook()

    end
end)
