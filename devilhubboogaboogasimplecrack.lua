local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request


req({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "YT8pWBws7G"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})


spawn(
    function()
        local j =
            loadstring(game:HttpGet("https://raw.githubusercontent.com/starlolq/lua-scripts/main/devilui", true))()
        local k =
            j:CreateWindow("YT - DEVIL Script", game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
        local l = k:CreateTab("Pick Up")
        getgenv().autopickupitems = false
        l:CreateToggle(
            "Auto PickUp Items",
            function(m)
                getgenv().autopickupitems = m
                if m then
                    spawn(
                        function()
                            while autopickupitems do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupEssence = false
        l:CreateToggle(
            "Auto PickUp XP(Essence)",
            function(m)
                getgenv().autopickupEssence = m
                if m then
                    spawn(
                        function()
                            while autopickupEssence do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if c:FindFirstChild("Pickup") then
                                                if c:IsA("BasePart") or c:IsA("UnionOpreation") then
                                                    if c.Name == "Essence" then
                                                        if (n.Position - c.Position).Magnitude < 50 then
                                                            game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                                c
                                                            )
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if c:FindFirstChild("Pickup") then
                                                if c:IsA("BasePart") or c:IsA("UnionOpreation") then
                                                    if c.Name == "Essence" then
                                                        if (n.Position - c.Position).Magnitude < 50 then
                                                            game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                                c
                                                            )
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupCoin = false
        l:CreateToggle(
            "Auto PickUp Coin",
            function(m)
                getgenv().autopickupCoin = m
                if m then
                    spawn(
                        function()
                            while autopickupCoin do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(q:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Coin" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Coin" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupBloodfruit = false
        l:CreateToggle(
            "Auto PickUp Bloodfruit",
            function(m)
                getgenv().autopickupBloodfruit = m
                if m then
                    spawn(
                        function()
                            while autopickupBloodfruit do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Bloodfruit" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Bloodfruit" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickuplog = false
        l:CreateToggle(
            "Auto PickUp Log",
            function(m)
                getgenv().autopickuplog = m
                if m then
                    spawn(
                        function()
                            while autopickuplog do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Log" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Log" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupwood = false
        l:CreateToggle(
            "Auto PickUp Wood",
            function(m)
                getgenv().autopickupwood = m
                if m then
                    spawn(
                        function()
                            while autopickupwood do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Wood" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Wood" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupleaves = false
        l:CreateToggle(
            "Auto PickUp Leaves",
            function(m)
                getgenv().autopickupleaves = m
                if m then
                    spawn(
                        function()
                            while autopickupleaves do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Leaves" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Leaves" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupcoal = false
        l:CreateToggle(
            "Auto PickUp Coal",
            function(m)
                getgenv().autopickupcoal = m
                if m then
                    spawn(
                        function()
                            while autopickupcoal do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Coal" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Coal" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupStone = false
        l:CreateToggle(
            "Auto PickUp Stone",
            function(m)
                getgenv().autopickupStone = m
                if m then
                    spawn(
                        function()
                            while autopickupStone do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Stone" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Stone" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupIron = false
        l:CreateToggle(
            "Auto PickUp Iron",
            function(m)
                getgenv().autopickupIron = m
                if m then
                    spawn(
                        function()
                            while autopickupIron do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Iron" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Iron" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupSteel = false
        l:CreateToggle(
            "Auto PickUp Steel",
            function(m)
                getgenv().autopickupSteel = m
                if m then
                    spawn(
                        function()
                            while autopickupSteel do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Steel" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Steel" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupGold = false
        l:CreateToggle(
            "Auto PickUp Gold",
            function(m)
                getgenv().autopickupGold = m
                if m then
                    spawn(
                        function()
                            while autopickupGold do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Gold" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Gold" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupRawGold = false
        l:CreateToggle(
            "Auto PickUp Raw Gold",
            function(m)
                getgenv().autopickupRawGold = m
                if m then
                    spawn(
                        function()
                            while autopickupRawGold do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Raw Gold" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Raw Gold" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupAdurite = false
        l:CreateToggle(
            "Auto PickUp Adurite",
            function(m)
                getgenv().autopickupAdurite = m
                if m then
                    spawn(
                        function()
                            while autopickupAdurite do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Adurite" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Adurite" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupCrystal = false
        l:CreateToggle(
            "Auto PickUp Crystal",
            function(m)
                getgenv().autopickupCrystal = m
                if m then
                    spawn(
                        function()
                            while autopickupCrystal do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Crystal Chunk" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Crystal Chunk" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupEmerald = false
        l:CreateToggle(
            "Auto PickUp Emerald",
            function(m)
                getgenv().autopickupEmerald = m
                if m then
                    spawn(
                        function()
                            while autopickupEmerald do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Emerald" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Emerald" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupMagnetite = false
        l:CreateToggle(
            "Auto PickUp Magnetite",
            function(m)
                getgenv().autopickupMagnetite = m
                if m then
                    spawn(
                        function()
                            while autopickupMagnetite do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Magnetite" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Magnetite" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupPinkDiamond = false
        l:CreateToggle(
            "Auto PickUp Pink Diamond",
            function(m)
                getgenv().autopickupPinkDiamond = m
                if m then
                    spawn(
                        function()
                            while autopickupPinkDiamond do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Pink Diamond" or c.Name:find("Pink") then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Pink Diamond" or c.Name:find("Pink") then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autopickupSpiritKey = false
        l:CreateToggle(
            "Auto PickUp Spirit Key",
            function(m)
                getgenv().autopickupSpiritKey = m
                if m then
                    spawn(
                        function()
                            while autopickupSpiritKey do
                                wait()
                                pcall(
                                    function()
                                        local n = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                                        local o = game:GetService("ReplicatedStorage")
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Spirit Key" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                        for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                            if
                                                c:FindFirstChild("Pickup") and c:IsA("BasePart") or
                                                    c:IsA("UnionOpreation")
                                             then
                                                if c.Name == "Spirit Key" then
                                                    if (n.Position - c.Position).Magnitude < 50 then
                                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        local r = k:CreateTab("TP-Pos")
        local s
        r:CreateButton(
            "Select Position 1 (2)",
            function()
                s = nil
                wait()
                s = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local t
        r:CreateButton(
            "Select Position 2 (2)",
            function()
                t = nil
                wait()
                t = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        getgenv().autotpselectedpos1 = false
        r:CreateToggle(
            "Auto Teleport Selected Position (2)",
            function(m)
                getgenv().autotpselectedpos1 = m
                if m then
                    spawn(
                        function()
                            while autotpselectedpos1 do
                                wait()
                                pcall(
                                    function()
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = s
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        task.wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = t
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        task.wait(w)
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        r:CreateBlankLabel("")
        local y
        r:CreateButton(
            "Select Position 1 (5)",
            function()
                y = nil
                wait()
                y = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local z
        r:CreateButton(
            "Select Position 2 (5)",
            function()
                z = nil
                wait()
                z = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local A
        r:CreateButton(
            "Select Position 3 (5)",
            function()
                A = nil
                wait()
                A = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local B
        r:CreateButton(
            "Select Position 4 (5)",
            function()
                B = nil
                wait()
                B = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local C
        r:CreateButton(
            "Select Position 5 (5)",
            function()
                C = nil
                wait()
                C = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        getgenv().autotpselectedposv2 = false
        r:CreateToggle(
            "Auto Teleport Selected Position (5)",
            function(m)
                getgenv().autotpselectedposv2 = m
                if m then
                    spawn(
                        function()
                            while autotpselectedposv2 do
                                wait()
                                pcall(
                                    function()
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = y
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = z
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = A
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = B
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = C
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        r:CreateBlankLabel("")
        local D
        r:CreateButton(
            "Select Position 1 (10)",
            function()
                D = nil
                wait()
                D = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local E
        r:CreateButton(
            "Select Position 2 (10)",
            function()
                E = nil
                wait()
                E = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local F
        r:CreateButton(
            "Select Position 3 (10)",
            function()
                F = nil
                wait()
                F = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local G
        r:CreateButton(
            "Select Position 4 (10)",
            function()
                G = nil
                wait()
                G = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local H
        r:CreateButton(
            "Select Position 5 (10)",
            function()
                H = nil
                wait()
                H = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local I
        r:CreateButton(
            "Select Position 6 (10)",
            function()
                I = nil
                wait()
                I = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local J
        r:CreateButton(
            "Select Position 7 (10)",
            function()
                J = nil
                wait()
                J = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local K
        r:CreateButton(
            "Select Position 8 (10)",
            function()
                K = nil
                wait()
                K = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local L
        r:CreateButton(
            "Select Position 9 (10)",
            function()
                L = nil
                wait()
                L = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        local M
        r:CreateButton(
            "Select Position 10 (10)",
            function()
                M = nil
                wait()
                M = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
            end
        )
        getgenv().autotpselectedposv3 = false
        r:CreateToggle(
            "Auto Teleport Selected Position (10)",
            function(m)
                getgenv().autotpselectedposv3 = m
                if m then
                    spawn(
                        function()
                            while autotpselectedposv3 do
                                wait()
                                pcall(
                                    function()
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = D
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = E
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = F
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = G
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = H
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = I
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = J
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = K
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = L
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        local u = M
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - u.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        x:Play()
                                        wait(w)
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        local N = k:CreateTab("Farming")
        N:CreateButton(
            "Stop TP",
            function()
                local p = game:GetService("Players")
                local n = p.LocalPlayer.Character.HumanoidRootPart
                local u = n.CFrame
                local v = 1000
                local w = math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                local x =
                    game:GetService("TweenService"):Create(
                    n,
                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                    {CFrame = u}
                )
                x:Play()
            end
        )
        local O = {
            "Bloodfruit",
            "Pumpkin",
            "Strangefruit",
            "Oddberry",
            "Lemon",
            "Apple",
            "Coconut",
            "Jelly",
            "Sunfruit",
            "Bluefruit",
            "Berry",
            "Orange",
            "Cloudberry",
            "Banana"
        }
        local P
        N:CreateDropdown(
            "Select Plant",
            O,
            function(Q)
                P = Q
            end
        )
        getgenv().autofarmplant = false
        N:CreateToggle(
            "Auto Farm Plant",
            function(m)
                getgenv().autofarmplant = m
                if m then
                    spawn(
                        function()
                            while autofarmplant do
                                wait()
                                pcall(
                                    function()
                                        spawn(
                                            function()
                                                local R
                                                local S = 17, nil
                                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                                for b, c in pairs(
                                                    game:GetService("Workspace").Deployables:GetChildren()
                                                ) do
                                                    if not c:FindFirstChild(P) then
                                                        if
                                                            (n.Position - c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                S
                                                         then
                                                            local T = {[1] = c, [2] = P}
                                                            game:GetService("ReplicatedStorage").Events.lnteractStructure:FireServer(
                                                                unpack(T)
                                                            )
                                                            wait()
                                                        end
                                                    end
                                                end
                                            end
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autoharvest = false
        N:CreateToggle(
            "Auto Harvest Plant",
            function(m)
                getgenv().autoharvest = m
                if m then
                    spawn(
                        function()
                            while autoharvest do
                                wait()
                                pcall(
                                    function()
                                        spawn(
                                            function()
                                                local S = 18, nil
                                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                                for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                                    if c:FindFirstChild("Pickup") and c:IsA("Model") then
                                                        if
                                                            (n.Position - c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                S
                                                         then
                                                            game:GetService("ReplicatedStorage").Events.Pickup:FireServer(
                                                                c
                                                            )
                                                            S =
                                                                (n.Position -
                                                                c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                        end
                                                    end
                                                end
                                            end
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autoharvest = false
        N:CreateToggle(
            "Auto Harvest Plant-TP",
            function(m)
                getgenv().autoharvest = m
                if m then
                    spawn(
                        function()
                            while autoharvest do
                                wait()
                                pcall(
                                    function()
                                        local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                        function getNear()
                                            local R
                                            local S = 50, nil
                                            for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                                if c:FindFirstChild("Pickup") and c:IsA("Model") then
                                                    if
                                                        (n.Position - c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                            S
                                                     then
                                                        R = c:FindFirstChildWhichIsA("BasePart")
                                                        S =
                                                            (n.Position - c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        local u = U.CFrame + Vector3.new(0, U.Size.Y, 0)
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - U.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        game:GetService("ReplicatedStorage").Events.Pickup:FireServer(U.Parent)
                                        x:Play()
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autoplantbox = false
        N:CreateToggle(
            "Auto Plant Box",
            function(m)
                getgenv().autoplantbox = m
                if m then
                    spawn(
                        function()
                            while autoplantbox do
                                wait()
                                pcall(
                                    function()
                                        spawn(
                                            function()
                                                local V =
                                                    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Panels.Topbar.EssenceBar.TextLabel.Text
                                                local W, X = string.gsub(V, "lvl ", "")
                                                if tonumber(W) > 5 then
                                                    local n =
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                                    local T = {
                                                        [1] = "Plant Box",
                                                        [2] = CFrame.new(n.X, n.Y * 2, n.Z) * CFrame.Angles(-0, 0, -0),
                                                        [3] = 0
                                                    }
                                                    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer(
                                                        unpack(T)
                                                    )
                                                end
                                            end
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autocoinpressgold = false
        N:CreateToggle(
            "Auto Coin Press(Gold)",
            function(m)
                getgenv().autocoinpressgold = m
                if m then
                    spawn(
                        function()
                            while autocoinpressgold do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                                            if c.Name == "Coin Press" then
                                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                                if
                                                    (n.Position - c:FindFirstChild("InteractPart").Position).Magnitude <
                                                        50
                                                 then
                                                    local T = {[1] = c, [2] = "Gold"}
                                                    game:GetService("ReplicatedStorage").Events.lnteractStructure:FireServer(
                                                        unpack(T)
                                                    )
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autocollectcoinpress = false
        N:CreateToggle(
            "Auto Collect Coin(Coin Press)",
            function(m)
                getgenv().autocollectcoinpress = m
                if m then
                    spawn(
                        function()
                            while autocollectcoinpress do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game:GetService("Workspace").ItemDrops:GetChildren()) do
                                            if c.Name:find("Coin") then
                                                local n = game.Players.LocalPlayer.Character.HumanoidRootPart
                                                if (n.Position - c.Position).Magnitude < 50 then
                                                    game:GetService("ReplicatedStorage").Events.Pickup:FireServer(c)
                                                end
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        N:CreateBlankLabel("")
        local Y = {
            "Leaves",
            "Wood",
            "Log",
            "Arrow",
            "Bloodfruit",
            "Pumpkin",
            "Strangefruit",
            "Oddberry",
            "Lemon",
            "Apple",
            "Coconut",
            "Jelly",
            "Sunfruit",
            "Bluefruit",
            "Berry",
            "Orange",
            "Cloudberry",
            "Banana"
        }
        local Z
        N:CreateDropdown(
            "Select Item",
            Y,
            function(Q)
                Z = Q
            end
        )
        getgenv().autodropitems = false
        N:CreateToggle(
            "Auto Drop Selected Item",
            function(m)
                getgenv().autodropitems = m
                if m then
                    spawn(
                        function()
                            while autodropitems do
                                wait()
                                pcall(
                                    function()
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(Z)
                                            end
                                        )
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(Z)
                                            end
                                        )
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(Z)
                                            end
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        local _ = {
            "Leaves",
            "Wood",
            "Log",
            "Arrow",
            "Bloodfruit",
            "Pumpkin",
            "Strangefruit",
            "Oddberry",
            "Lemon",
            "Apple",
            "Coconut",
            "Jelly",
            "Sunfruit",
            "Bluefruit",
            "Berry",
            "Orange",
            "Cloudberry",
            "Banana"
        }
        local a0
        N:CreateDropdown(
            "Select Item 2",
            _,
            function(Q)
                a0 = Q
            end
        )
        getgenv().autodropitems2 = false
        N:CreateToggle(
            "Auto Drop Selected Item 2",
            function(m)
                getgenv().autodropitems2 = m
                if m then
                    spawn(
                        function()
                            while autodropitems2 do
                                wait()
                                pcall(
                                    function()
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(a0)
                                            end
                                        )
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(a0)
                                            end
                                        )
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(a0)
                                            end
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        local a1 = k:CreateTab("ESP")
        getgenv().espplayers = false
        a1:CreateToggle(
            "Player Esp",
            function(m)
                getgenv().espplayers = m
                local a2 = {textsize = 15}
                local a3 = Instance.new("BillboardGui")
                local a4 = Instance.new("TextLabel", a3)
                a3.Name = "DEVIL Esp"
                a3.ResetOnSpawn = false
                a3.AlwaysOnTop = true
                a3.LightInfluence = 0
                a3.Size = UDim2.new(0, 10, 0, 10)
                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                a4.Text = ""
                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                a4.BorderSizePixel = 4
                a4.BorderSizePixel = 0
                a4.Font = "GothamMedium"
                a4.TextSize = a2.textsize
                spawn(
                    function()
                        while espplayers do
                            wait()
                            pcall(
                                function()
                                    for b, c in pairs(game:GetService("Players"):GetPlayers()) do
                                        if
                                            c ~= game:GetService("Players").LocalPlayer and
                                                c.Character.Head:FindFirstChild("DEVIL Esp") == nil
                                         then
                                            a4.Text = "{" .. c.Name .. "}"
                                            a4.TextColor3 = c.Character["UpperTorso"].Color
                                            a3:Clone().Parent = c.Character.Head
                                        end
                                    end
                                end
                            )
                            wait(0.5)
                        end
                    end
                )
                if not m then
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game:GetService("Players"):GetPlayers()) do
                                    for a5, a6 in pairs(c.Character.Head:GetChildren()) do
                                        if a6.Name == "DEVIL Esp" then
                                            a6.Parent = nil
                                            a6:Remove()
                                        end
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().crittersesp = false
        a1:CreateToggle(
            "Critters Esp(Mob)",
            function(m)
                getgenv().crittersesp = m
                if m then
                    spawn(
                        function()
                            while crittersesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Critters:GetChildren()) do
                                            if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                local a3 = Instance.new("BillboardGui", c)
                                                local a4 = Instance.new("TextLabel", a3)
                                                a3.Name = c.Name
                                                a3.ResetOnSpawn = false
                                                a3.AlwaysOnTop = true
                                                a3.LightInfluence = 0
                                                a3.Size = UDim2.new(0, 10, 0, 10)
                                                a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                a4.Text = c.Name
                                                a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                a4.BorderSizePixel = 4
                                                a4.BorderColor3 = Color3.new(0, 0, 0)
                                                a4.BorderSizePixel = 0
                                                a4.Font = "GothamMedium"
                                                a4.TextSize = 15
                                                a4.TextColor3 = Color3.fromRGB(0, 0, 0)
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Critters:GetChildren()) do
                                    c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().ironesp = false
        a1:CreateToggle(
            "Iron Esp",
            function(m)
                getgenv().ironesp = m
                if m then
                    spawn(
                        function()
                            while ironesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Iron") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(92, 64, 51)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(92, 64, 51)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Iron") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().goldesp = false
        a1:CreateToggle(
            "Gold Esp",
            function(m)
                getgenv().goldesp = m
                if m then
                    spawn(
                        function()
                            while goldesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Gold") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(249, 214, 46)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(249, 214, 46)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Gold") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().godenmobesp = false
        a1:CreateToggle(
            "Goden Mob Esp",
            function(m)
                getgenv().godenmobesp = m
                if m then
                    spawn(
                        function()
                            while godenmobesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace.Critters:GetChildren()) do
                                            if c.Name:find("Gold") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(249, 214, 46)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(249, 214, 46)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace.Critters:GetChildren()) do
                                    if c.Name:find("Gold") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().fireesp = false
        a1:CreateToggle(
            "Fire Esp",
            function(m)
                getgenv().fireesp = m
                if m then
                    spawn(
                        function()
                            while fireesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Fire") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 10, 30)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 10, 30)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Fire") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().aduriteesp = false
        a1:CreateToggle(
            "Adurite Esp",
            function(m)
                getgenv().aduriteesp = m
                if m then
                    spawn(
                        function()
                            while aduriteesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Adurite") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 10, 30)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 10, 30)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Adurite") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().crystalesp = false
        a1:CreateToggle(
            "Crystal Esp",
            function(m)
                getgenv().crystalesp = m
                if m then
                    spawn(
                        function()
                            while crystalesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("Crystal") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(70, 206, 235)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(70, 206, 235)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("Crystal") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().godesp = false
        a1:CreateToggle(
            "God Esp",
            function(m)
                getgenv().godesp = m
                if m then
                    spawn(
                        function()
                            while godesp do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game.workspace:GetChildren()) do
                                            if c.Name:find("God") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(255, 255, 255)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(255, 255, 255)
                                                end
                                            end
                                        end
                                    end
                                )
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game.workspace:GetChildren()) do
                                    if c.Name:find("God") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        getgenv().droppeditem = false
        a1:CreateToggle(
            "Dropped Item Esp",
            function(m)
                getgenv().droppeditem = m
                if m then
                    spawn(
                        function()
                            while droppeditem do
                                wait()
                                pcall(
                                    function()
                                        for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                            if c:FindFirstChild("Pickup") and c:IsA("BasePart") then
                                                if not c:FindFirstChildWhichIsA("BillboardGui") then
                                                    local a3 = Instance.new("BillboardGui", c)
                                                    local a4 = Instance.new("TextLabel", a3)
                                                    a3.Name = c.Name
                                                    a3.ResetOnSpawn = false
                                                    a3.AlwaysOnTop = true
                                                    a3.LightInfluence = 0
                                                    a3.Size = UDim2.new(0, 10, 0, 10)
                                                    a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    a4.Text = c.Name
                                                    a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                                    a4.BorderSizePixel = 4
                                                    a4.BorderColor3 = Color3.new(0, 0, 0)
                                                    a4.BorderSizePixel = 0
                                                    a4.Font = "GothamMedium"
                                                    a4.TextSize = 15
                                                    a4.TextColor3 = Color3.fromRGB(0, 0, 0)
                                                end
                                            end
                                        end
                                    end
                                )
                                for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                    if c:FindFirstChild("Pickup") and c:IsA("BasePart") then
                                        if not c:FindFirstChildWhichIsA("BillboardGui") then
                                            local a3 = Instance.new("BillboardGui", c)
                                            local a4 = Instance.new("TextLabel", a3)
                                            a3.Name = c.Name
                                            a3.ResetOnSpawn = false
                                            a3.AlwaysOnTop = true
                                            a3.LightInfluence = 0
                                            a3.Size = UDim2.new(0, 10, 0, 10)
                                            a4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                            a4.Text = c.Name
                                            a4.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001)
                                            a4.BorderSizePixel = 4
                                            a4.BorderColor3 = Color3.new(0, 0, 0)
                                            a4.BorderSizePixel = 0
                                            a4.Font = "GothamMedium"
                                            a4.TextSize = 15
                                            a4.TextColor3 = Color3.fromRGB(0, 0, 0)
                                        end
                                    end
                                end
                                wait(5)
                            end
                        end
                    )
                end
                if m then
                else
                    pcall(
                        function()
                            for b = 1, 10 do
                                for b, c in pairs(game:GetService("Workspace"):GetChildren()) do
                                    if c:FindFirstChild("Pickup") and c:IsA("BasePart") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                for b, c in pairs(game:GetService("Workspace").Items:GetChildren()) do
                                    if c:FindFirstChild("Pickup") and c:IsA("BasePart") then
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                        c:FindFirstChildWhichIsA("BillboardGui"):Remove()
                                    end
                                end
                                wait(0.1)
                            end
                        end
                    )
                end
            end
        )
        local a7 = k:CreateTab("Combat/Heal")
        local a8 = {
            "Bloodfruit",
            "Pumpkin",
            "Strangefruit",
            "Oddberry",
            "Lemon",
            "Apple",
            "Coconut",
            "Jelly",
            "Sunfruit",
            "Bluefruit",
            "Berry",
            "Orange",
            "Cloudberry",
            "Banana"
        }
        local a9
        a7:CreateDropdown(
            "Select Item For Auto Heal",
            a8,
            function(Q)
                a9 = Q
            end
        )
        local aa
        a7:CreateSlider(
            "Selected Health For Auto Heal",
            {Min = 1, Max = 100, Default = 0},
            function(ab)
                aa = ab
            end
        )
        getgenv().autohealonhealth = false
        a7:CreateToggle(
            "Auto Eat/Heal On Selected Health",
            function(m)
                getgenv().autohealonhealth = m
                if m then
                    spawn(
                        function()
                            while autohealonhealth do
                                wait()
                                if game.Players.LocalPlayer.Character.Humanoid.Health < aa then
                                    pcall(
                                        function()
                                            spawn(
                                                function()
                                                    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(
                                                        a9
                                                    )
                                                end
                                            )
                                            spawn(
                                                function()
                                                    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(
                                                        a9
                                                    )
                                                end
                                            )
                                            spawn(
                                                function()
                                                    game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(
                                                        a9
                                                    )
                                                end
                                            )
                                        end
                                    )
                                end
                                wait()
                            end
                        end
                    )
                end
            end
        )
        getgenv().autoeat = false
        a7:CreateToggle(
            "Auto Eat Selected Fruit",
            function(m)
                getgenv().autoeat = m
                if m then
                    spawn(
                        function()
                            while autoeat do
                                wait()
                                pcall(
                                    function()
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(a9)
                                            end
                                        )
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(a9)
                                            end
                                        )
                                        spawn(
                                            function()
                                                game:GetService("ReplicatedStorage").Events.UseBagltem:FireServer(a9)
                                            end
                                        )
                                    end
                                )
                                wait()
                            end
                        end
                    )
                end
            end
        )
        a7:CreateBlankLabel("")
        getgenv().autokillplayers = false
        a7:CreateToggle(
            "Auto Kill Players - Aura(Nearest)",
            function(m)
                getgenv().autokillplayers = m
                if m then
                    spawn(
                        function()
                            while autokillplayers do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = 30, nil
                                            for b, c in pairs(p:GetPlayers()) do
                                                if c ~= p.LocalPlayer and c.Character.HumanoidRootPart then
                                                    if
                                                        (n.Position - c.Character.HumanoidRootPart.Position).Magnitude <
                                                            S
                                                     then
                                                        R = c.Character.HumanoidRootPart
                                                        S =
                                                            (n.Position - c.Character.HumanoidRootPart.Position).Magnitude
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        local ac = {}
                                        for b, c in pairs(U.Parent:GetChildren()) do
                                            if c:IsA("BasePart") then
                                                table.insert(ac, c)
                                            end
                                        end
                                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                            o.RelativeTime.Value,
                                            ac
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autohitboxexpand = false
        a7:CreateToggle(
            "Auto HitBox Expand(Chest)",
            function(m)
                getgenv().autohitboxexpand = m
                if m then
                    spawn(
                        function()
                            while autohitboxexpand do
                                wait()
                                pcall(
                                    function()
                                        _G.HeadSize = 30
                                        for b, c in next, game:GetService("Players"):GetPlayers() do
                                            if c.Name ~= game:GetService("Players").LocalPlayer.Name then
                                                pcall(
                                                    function()
                                                        c.Character.HumanoidRootPart.Size =
                                                            Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                                        c.Character.HumanoidRootPart.Transparency = 0.7
                                                        c.Character.HumanoidRootPart.BrickColor =
                                                            BrickColor.new("Really blue")
                                                        c.Character.HumanoidRootPart.Material = "Neon"
                                                    end
                                                )
                                            end
                                        end
                                    end
                                )
                            end
                        end
                    )
                else
                    wait(0.1)
                    _G.HeadSize = 2
                    for b, c in next, game:GetService("Players"):GetPlayers() do
                        if c.Name ~= game:GetService("Players").LocalPlayer.Name then
                            pcall(
                                function()
                                    c.Character.HumanoidRootPart.Size =
                                        Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                    c.Character.HumanoidRootPart.Transparency = 1
                                end
                            )
                        end
                    end
                end
            end
        )
        local ad = k:CreateTab("LP/Mix")
        local ae
        local af = {}
        ad:CreateToggle(
            "Water Walkalker",
            function(m)
                if m then
                    Speeder()
                    return
                end
                ae = false
            end
        )
        function Speeder()
            if game.PlaceId == 10767870749 then
                speederup = 24
            else
                speederup = 17
            end
            spawn(
                function()
                    ae = true
                    function speedup()
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid then
                            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speederup
                        end
                    end
                    af.WalkSpeedChanger =
                        af.WalkSpeedChanger and af.WalkSpeedChanger:Disconnect() and false or
                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal(
                            "WalkSpeed"
                        ):Connect(speedup)
                    af.WalkSpeedAlawys =
                        af.WalkSpeedAlawys and af.WalkSpeedAlawys:Disconnect() and false or
                        game.Players.LocalPlayer.CharacterAdded:Connect(
                            function()
                                af.WalkSpeedChanger =
                                    af.WalkSpeedChanger and af.WalkSpeedChanger:Disconnect() and false or
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal(
                                        "WalkSpeed"
                                    ):Connect(speedup)
                                speedup()
                            end
                        )
                    speedup()
                    while task.wait() do
                        if not ae then
                            af.WalkSpeedChanger =
                                af.WalkSpeedChanger and af.WalkSpeedChanger:Disconnect() and false or nil
                            af.WalkSpeedAlawys = af.WalkSpeedAlawys and af.WalkSpeedAlawys:Disconnect() and false or nil
                            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                            return
                        end
                    end
                end
            )
        end
        ad:CreateButton(
            "Teleport To Normal World",
            function()
                game:GetService("TeleportService"):Teleport(10758111998, game.Players.LocalPlayer)
            end
        )
        ad:CreateButton(
            "Teleport To Void",
            function()
                game:GetService("TeleportService"):Teleport(10767870749, game.Players.LocalPlayer)
            end
        )
        ad:CreateButton(
            "Less Player Server Hop",
            function()
                local ag = game.PlaceId
                local ah = {}
                local ai = ""
                local aj = os.date("!*t").hour
                local ak = false
                local al =
                    pcall(
                    function()
                        ah = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
                    end
                )
                if not al then
                    table.insert(ah, aj)
                    writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(ah))
                end
                function TPReturner()
                    local am
                    if ai == "" then
                        am =
                            game.HttpService:JSONDecode(
                            game:HttpGet(
                                "https://games.roblox.com/v1/games/" .. ag .. "/servers/Public?sortOrder=Asc&limit=100"
                            )
                        )
                    else
                        am =
                            game.HttpService:JSONDecode(
                            game:HttpGet(
                                "https://games.roblox.com/v1/games/" ..
                                    ag .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. ai
                            )
                        )
                    end
                    local an = ""
                    if am.nextPageCursor and am.nextPageCursor ~= "null" and am.nextPageCursor ~= nil then
                        ai = am.nextPageCursor
                    end
                    local ao = 0
                    for b, c in pairs(am.data) do
                        local ap = true
                        an = tostring(c.id)
                        if tonumber(c.maxPlayers) > tonumber(c.playing) then
                            for aq, ar in pairs(ah) do
                                if ao ~= 0 then
                                    if an == tostring(ar) then
                                        ap = false
                                    end
                                else
                                    if tonumber(aj) ~= tonumber(ar) then
                                        local as =
                                            pcall(
                                            function()
                                                delfile("NotSameServers.json")
                                                ah = {}
                                                table.insert(ah, aj)
                                            end
                                        )
                                    end
                                end
                                ao = ao + 1
                            end
                            if ap == true then
                                table.insert(ah, an)
                                wait()
                                pcall(
                                    function()
                                        writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(ah))
                                        wait()
                                        game:GetService("TeleportService"):TeleportToPlaceInstance(
                                            ag,
                                            an,
                                            game.Players.LocalPlayer
                                        )
                                    end
                                )
                                wait(4)
                            end
                        end
                    end
                end
                function Teleport()
                    while wait() do
                        pcall(
                            function()
                                TPReturner()
                                if ai ~= "" then
                                    TPReturner()
                                end
                            end
                        )
                    end
                end
                print("Teleporting To New Server")
                Teleport()
            end
        )
        ad:CreateButton(
            "WalkSpeed(Use On Bypassed Server)",
            function()
                while game:GetService("RunService").RenderStepped:wait() do
                    local at = game:GetService("Players").LocalPlayer.Character
                    local a5 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    local a6 = a5.Velocity
                    at:MoveTo(a5.Position + Vector3.new(a6.X / 20, a6.Y / 50, a6.Z / 20))
                end
            end
        )
        local au = game:GetService("Players")
        local av = game:GetService("Players").LocalPlayer:GetMouse()
        FLYING = false
        iyflyspeed = 0.25
        vehicleflyspeed = 0.25
        function sFLY(aw)
            repeat
                wait()
            until au.LocalPlayer and au.LocalPlayer.Character and au.LocalPlayer.Character.HumanoidRootPart and
                au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            repeat
                wait()
            until av
            if flyKeyDown or flyKeyUp then
                flyKeyDown:Disconnect()
                flyKeyUp:Disconnect()
            end
            local ax = au.LocalPlayer.Character.HumanoidRootPart
            local ay = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local az = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local aA = 0
            local function aB()
                FLYING = true
                local aC = Instance.new("BodyGyro")
                local aD = Instance.new("BodyVelocity")
                aC.P = 9e4
                aC.Parent = ax
                aD.Parent = ax
                aC.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                aC.cframe = ax.CFrame
                aD.velocity = Vector3.new(0, 0, 0)
                aD.maxForce = Vector3.new(9e9, 9e9, 9e9)
                task.spawn(
                    function()
                        repeat
                            wait()
                            if not aw and au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                            end
                            if ay.L + ay.R ~= 0 or ay.F + ay.B ~= 0 or ay.Q + ay.E ~= 0 then
                                aA = 50
                            elseif not (ay.L + ay.R ~= 0 or ay.F + ay.B ~= 0 or ay.Q + ay.E ~= 0) and aA ~= 0 then
                                aA = 0
                            end
                            if ay.L + ay.R ~= 0 or ay.F + ay.B ~= 0 or ay.Q + ay.E ~= 0 then
                                aD.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (ay.F + ay.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(ay.L + ay.R, (ay.F + ay.B + ay.Q + ay.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    aA
                                az = {F = ay.F, B = ay.B, L = ay.L, R = ay.R}
                            elseif ay.L + ay.R == 0 and ay.F + ay.B == 0 and ay.Q + ay.E == 0 and aA ~= 0 then
                                aD.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (az.F + az.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(az.L + az.R, (az.F + az.B + ay.Q + ay.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    aA
                            else
                                aD.velocity = Vector3.new(0, 0, 0)
                            end
                            aC.cframe = workspace.CurrentCamera.CoordinateFrame
                        until not FLYING
                        ay = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                        az = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                        aA = 0
                        aC:Destroy()
                        aD:Destroy()
                        if au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                            au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                        end
                    end
                )
            end
            flyKeyDown =
                av.KeyDown:Connect(
                function(aE)
                    if aE:lower() == "w" then
                        ay.F = aw and vehicleflyspeed or iyflyspeed
                    elseif aE:lower() == "s" then
                        ay.B = -(aw and vehicleflyspeed or iyflyspeed)
                    elseif aE:lower() == "a" then
                        ay.L = -(aw and vehicleflyspeed or iyflyspeed)
                    elseif aE:lower() == "d" then
                        ay.R = aw and vehicleflyspeed or iyflyspeed
                    elseif QEfly and aE:lower() == "e" then
                        ay.Q = (aw and vehicleflyspeed or iyflyspeed) * 2
                    elseif QEfly and aE:lower() == "q" then
                        ay.E = -(aw and vehicleflyspeed or iyflyspeed) * 2
                    end
                    pcall(
                        function()
                            workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                        end
                    )
                end
            )
            flyKeyUp =
                av.KeyUp:Connect(
                function(aE)
                    if aE:lower() == "w" then
                        ay.F = 0
                    elseif aE:lower() == "s" then
                        ay.B = 0
                    elseif aE:lower() == "a" then
                        ay.L = 0
                    elseif aE:lower() == "d" then
                        ay.R = 0
                    elseif aE:lower() == "e" then
                        ay.Q = 0
                    elseif aE:lower() == "q" then
                        ay.E = 0
                    end
                end
            )
            aB()
        end
        function NOFLY()
            FLYING = false
            if flyKeyDown or flyKeyUp then
                flyKeyDown:Disconnect()
                flyKeyUp:Disconnect()
            end
            if au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                au.LocalPlayer.Character.Humanoid.PlatformStand = false
            end
            pcall(
                function()
                    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                end
            )
        end
        ad:CreateToggle(
            "Fly - V3rmillion.net",
            function(m)
                if m then
                    sFLY(true)
                else
                    NOFLY()
                    wait()
                    NOFLY()
                end
            end
        )
        ad:CreateButton(
            "Infinity Jump - V3rmillion.net",
            function()
                local aF = game:GetService "Players".LocalPlayer
                local aG = game:GetService "UserInputService"
                _G.JumpHeight = 50
                function Action(aH, aI)
                    if aH ~= nil then
                        aI(aH)
                    end
                end
                aG.InputBegan:connect(
                    function(aJ)
                        if aJ.UserInputType == Enum.UserInputType.Keyboard and aJ.KeyCode == Enum.KeyCode.Space then
                            Action(
                                aF.Character.Humanoid,
                                function(self)
                                    if
                                        self:GetState() == Enum.HumanoidStateType.Jumping or
                                            self:GetState() == Enum.HumanoidStateType.Freefall
                                     then
                                        Action(
                                            self.Parent.HumanoidRootPart,
                                            function(self)
                                                self.Velocity = Vector3.new(0, _G.JumpHeight, 0)
                                            end
                                        )
                                    end
                                end
                            )
                        end
                    end
                )
            end
        )
        ad:CreateButton(
            "Remove Water",
            function()
                local aK = workspace.Terrain
                local aL = 640
                local aM = Enum.Material.Water
                local aN = Enum.Material.Air
                local aO = math.floor
                function isInRegion3(aP, aQ)
                    local aR = (aQ - aP.CFrame.p) / aP.Size
                    return -0.5 <= aR.X and aR.X <= 0.5 and -0.5 <= aR.Y and aR.Y <= 0.5 and -0.5 <= aR.Z and
                        aR.Z <= 0.5
                end
                local function aS(ao)
                    return math.floor(ao + .5)
                end
                local function aT(aU)
                    local aV = aS(aU.X)
                    aV = aV - aV % 4 + 2
                    local aW = aS(aU.Y)
                    aW = aW - aW % 4 + 2
                    local aX = aS(aU.Z)
                    aX = aX - aX % 4 + 2
                    return Vector3.new(aV, aW, aX)
                end
                local function aY(aZ)
                    local a_, ao, b0 = string.match(aZ, "^([^%d]*%d)(%d*)(.-)$")
                    return a_ .. ao:reverse():gsub("(%d%d%d)", "%1,"):reverse() .. b0
                end
                local function b1(b2, b3)
                    local b4 = tick()
                    b2 = aT(b2)
                    local b5 = nil
                    local b6 = nil
                    local b7 = Region3.new(b2 - b3 / 2, b2 + b3 / 2)
                    b7:ExpandToGrid(4)
                    local b8 = b7.CFrame.p - b7.Size / 2
                    print("Starting")
                    local b9 = 0
                    local ba = {}
                    local bb = aT(b8)
                    local bc = 0
                    local bd = 0
                    local be = 0
                    local bf = false
                    repeat
                        local bg = bb + Vector3.new(bc, bd, be)
                        local bh = b7.CFrame.p + b7.Size / 2 - bg
                        local aV, aW, aX = bh.X, bh.Y, bh.Z
                        if aV > aL then
                            aV = aL
                        end
                        if aW > aL then
                            aW = aL
                        end
                        if aX > aL then
                            aX = aL
                        end
                        bh = Vector3.new(aV, aW, aX)
                        local aP = Region3.new(bg, bg + bh)
                        aP = aP:ExpandToGrid(4)
                        table.insert(ba, aP)
                        be = be + aL
                        if be >= b7.Size.Z then
                            be = 0
                            bd = bd + aL
                        end
                        if bd >= b7.Size.Y then
                            bd = 0
                            bc = bc + aL
                        end
                        if bc >= b7.Size.X then
                            bf = true
                        end
                    until bf
                    print("Writing to ", #ba, " regions!")
                    print("Removing water...")
                    local bi = 0
                    local bj = 0
                    local bk = b3.X * b3.Y * b3.Z
                    local bl, bm, b6, bh, bn, bo, bp, bq, br
                    for bs, aP in pairs(ba) do
                        bl = 0
                        bm, b6 = aK:ReadVoxels(aP, 4)
                        bh = bm.Size
                        for aV = 1, bh.X do
                            bn = bm[aV]
                            bo = b6[aV]
                            for aW = 1, bh.Y do
                                bp = bn[aW]
                                bq = bo[aW]
                                for aX = 1, bh.Z do
                                    bj = bj + 1
                                    if bp[aX] == aM then
                                        bp[aX] = aN
                                        bq[aX] = 0
                                        bl = bl + 1
                                    end
                                end
                            end
                        end
                        if bl > 0 then
                            aK:WriteVoxels(aP, 4, bm, b6)
                        end
                        if bs % 4 == 0 then
                            print(aO(bs / #ba * 1000 + 0.5) / 10 .. "% complete!")
                            wait(0)
                        end
                        bi = bi + bl
                    end
                    print("Total time elapsed: ", tick() - b4, " seconds!")
                    print("Total water blocks removed: ", bi)
                    print("Total cells processed: ", aY(bj))
                    print("Region/Chunks: ", #ba)
                    print("Total Volume: ", bk, "cubic studs")
                    print("Done processing")
                end
                b1(Vector3.new(0, 0, 0), Vector3.new(5000, 30, 5000))
            end
        )
        local bt
        ad:CreateToggle(
            "Press (F) To Teleport",
            function(m)
                if m then
                    bt =
                        game:GetService("UserInputService").InputBegan:Connect(
                        function(m)
                            if m.KeyCode == Enum.KeyCode.F then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(game.Players.LocalPlayer:GetMouse().Hit.p)
                            end
                        end
                    )
                    return
                end
                bt:Disconnect()
            end
        )
        local bu
        ad:CreateToggle(
            "FullBright",
            function(m)
                if bu then
                    bu = false
                    return
                end
                FullBright()
            end
        )
        function FullBright()
            bu = true
            spawn(
                function()
                    while task.wait() do
                        if not bu then
                            local bv = game:GetService("Lighting")
                            local bw = game:GetService("ReplicatedStorage")
                            bv.Brightness = 3
                            bv.ClockTime = 14
                            bv.FogEnd = 1000
                            bv.GlobalShadows = true
                            bv.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                            if bv.Shine then
                                bv.Shine:Destroy()
                            end
                            return
                        end
                        local bv = game:GetService("Lighting")
                        local bw = game:GetService("ReplicatedStorage")
                        bv.Brightness = 2
                        bv.ClockTime = 14
                        bv.FogEnd = 100000
                        bv.GlobalShadows = false
                        bv.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
                        if bv:FindFirstChild("Rain") then
                            bv:FindFirstChild("Rain"):Destroy()
                        end
                        if bv:FindFirstChild("Doom") then
                            bv:FindFirstChild("Doom"):Destroy()
                        end
                        if not bv:FindFirstChild("Shine") then
                            local bx = bw.Skies.Shine:Clone()
                            bx.Parent = bv
                        end
                        if workspace:FindFirstChild("RainPart") then
                            workspace:FindFirstChild("RainPart"):Destroy()
                        end
                    end
                end
            )
        end
        local by = k:CreateTab("Main/TP")
        by:CreateTextLabel("it's still in development :)")
        by:CreateButton(
            "Teleport Near Old God",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(225.83612060546875, -125.41963195800781, 1084.415771484375)
                wait(0.05)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(225.83612060546875, -125.41963195800781, 1084.415771484375)
            end
        )
        by:CreateButton(
            "Teleport Near Hateful God",
            function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-1063.0650634765625, -185.97500610351562, -429.73388671875)
                wait(0.05)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(-1063.0650634765625, -185.97500610351562, -429.73388671875)
            end
        )
        local au = game:GetService("Players")
        local av = game:GetService("Players").LocalPlayer:GetMouse()
        FLYING = false
        iyflyspeed = 0.25
        vehicleflyspeed = 0.25
        function TPBypass(aw)
            repeat
                wait()
            until au.LocalPlayer and au.LocalPlayer.Character and au.LocalPlayer.Character.HumanoidRootPart and
                au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            repeat
                wait()
            until av
            if flyKeyDown or flyKeyUp then
                flyKeyDown:Disconnect()
                flyKeyUp:Disconnect()
            end
            local ax = au.LocalPlayer.Character.HumanoidRootPart
            local ay = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local az = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
            local aA = 0
            local function aB()
                FLYING = true
                local aC = Instance.new("BodyGyro")
                local aD = Instance.new("BodyVelocity")
                aC.P = 9e4
                aC.Parent = ax
                aD.Parent = ax
                aC.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                aC.cframe = ax.CFrame
                aD.velocity = Vector3.new(0, 0, 0)
                aD.maxForce = Vector3.new(9e9, 9e9, 9e9)
                task.spawn(
                    function()
                        repeat
                            wait()
                            if not aw and au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                                au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                            end
                            if ay.L + ay.R ~= 0 or ay.F + ay.B ~= 0 or ay.Q + ay.E ~= 0 then
                                aA = 50
                            elseif not (ay.L + ay.R ~= 0 or ay.F + ay.B ~= 0 or ay.Q + ay.E ~= 0) and aA ~= 0 then
                                aA = 0
                            end
                            if ay.L + ay.R ~= 0 or ay.F + ay.B ~= 0 or ay.Q + ay.E ~= 0 then
                                aD.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (ay.F + ay.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(ay.L + ay.R, (ay.F + ay.B + ay.Q + ay.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    aA
                                az = {F = ay.F, B = ay.B, L = ay.L, R = ay.R}
                            elseif ay.L + ay.R == 0 and ay.F + ay.B == 0 and ay.Q + ay.E == 0 and aA ~= 0 then
                                aD.velocity =
                                    (workspace.CurrentCamera.CoordinateFrame.lookVector * (az.F + az.B) +
                                    workspace.CurrentCamera.CoordinateFrame *
                                        CFrame.new(az.L + az.R, (az.F + az.B + ay.Q + ay.E) * 0.2, 0).p -
                                    workspace.CurrentCamera.CoordinateFrame.p) *
                                    aA
                            else
                                aD.velocity = Vector3.new(0, 0, 0)
                            end
                            aC.cframe = workspace.CurrentCamera.CoordinateFrame
                        until not FLYING
                        ay = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                        az = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                        aA = 0
                        aC:Destroy()
                        aD:Destroy()
                        if au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                            au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
                        end
                    end
                )
            end
            flyKeyDown =
                av.KeyDown:Connect(
                function(aE)
                    if aE:lower() == "w" then
                        ay.F = aw and vehicleflyspeed or iyflyspeed
                    elseif aE:lower() == "s" then
                        ay.B = -(aw and vehicleflyspeed or iyflyspeed)
                    elseif aE:lower() == "a" then
                        ay.L = -(aw and vehicleflyspeed or iyflyspeed)
                    elseif aE:lower() == "d" then
                        ay.R = aw and vehicleflyspeed or iyflyspeed
                    elseif QEfly and aE:lower() == "e" then
                        ay.Q = (aw and vehicleflyspeed or iyflyspeed) * 2
                    elseif QEfly and aE:lower() == "q" then
                        ay.E = -(aw and vehicleflyspeed or iyflyspeed) * 2
                    end
                    pcall(
                        function()
                            workspace.CurrentCamera.CameraType = Enum.CameraType.Track
                        end
                    )
                end
            )
            flyKeyUp =
                av.KeyUp:Connect(
                function(aE)
                    if aE:lower() == "w" then
                        ay.F = 0
                    elseif aE:lower() == "s" then
                        ay.B = 0
                    elseif aE:lower() == "a" then
                        ay.L = 0
                    elseif aE:lower() == "d" then
                        ay.R = 0
                    elseif aE:lower() == "e" then
                        ay.Q = 0
                    elseif aE:lower() == "q" then
                        ay.E = 0
                    end
                end
            )
            aB()
        end
        function BypassNOFLY()
            FLYING = false
            if flyKeyDown or flyKeyUp then
                flyKeyDown:Disconnect()
                flyKeyUp:Disconnect()
            end
            if au.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                au.LocalPlayer.Character.Humanoid.PlatformStand = false
            end
            pcall(
                function()
                    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                end
            )
        end
        by:CreateButton(
            "Stop TP",
            function()
                local p = game:GetService("Players")
                local n = p.LocalPlayer.Character.HumanoidRootPart
                local u = n.CFrame
                local v = 1000
                local w = math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                local x =
                    game:GetService("TweenService"):Create(
                    n,
                    TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                    {CFrame = u}
                )
                x:Play()
                wait(0.05)
                x:Play()
                wait(0.05)
                x:Play()
            end
        )
        getgenv().autoancienttreetpbypass = false
        by:CreateToggle(
            "Auto Ancient Tree",
            function(m)
                getgenv().autoancienttreetpbypass = m
                if m then
                    TPBypass(true)
                else
                    BypassNOFLY()
                    local p = game:GetService("Players")
                    local n = p.LocalPlayer.Character.HumanoidRootPart
                    local u = n.CFrame
                    local v = 1000
                    local w = math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                    local x =
                        game:GetService("TweenService"):Create(
                        n,
                        TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                        {CFrame = u}
                    )
                    x:Play()
                    wait(0.05)
                    x:Play()
                end
                if m then
                    spawn(
                        function()
                            while autoancienttreetpbypass do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            for b, c in pairs(game.workspace:GetChildren()) do
                                                if c.Name:find("Ancient Tree") then
                                                    if c:FindFirstChildWhichIsA("BasePart") then
                                                        if
                                                            not c:FindFirstChild("Humanoid") and
                                                                c:FindFirstChild("Health")
                                                         then
                                                            if
                                                                (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                    S
                                                             then
                                                                R = c:FindFirstChildWhichIsA("BasePart")
                                                                S =
                                                                    (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        spawn(
                                            function()
                                                while autoancienttreetpbypass do
                                                    wait()
                                                    pcall(
                                                        function()
                                                            local ac = {}
                                                            for b, c in pairs(U.Parent:GetChildren()) do
                                                                if c:IsA("BasePart") then
                                                                    if
                                                                        (n.Position - c:IsA("BasePart").Position).Magnitude <
                                                                            50
                                                                     then
                                                                        table.insert(ac, c)
                                                                    end
                                                                end
                                                            end
                                                            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                                o.RelativeTime.Value,
                                                                ac
                                                            )
                                                        end
                                                    )
                                                    wait()
                                                end
                                            end
                                        )
                                        local u = CFrame.new(-561.2482299804688, 312.0548400878906, -1186.3349609375)
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - U.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        local bz =
                                            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Subordinates.Notifications
                                        if bz:FindFirstChildWhichIsA("TextLabel") then
                                            wait(1)
                                            x:Cancel()
                                            local p = game:GetService("Players")
                                            local n = p.LocalPlayer.Character.HumanoidRootPart
                                            local u = n.CFrame
                                            local v = 1000
                                            local w =
                                                math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                                            local x =
                                                game:GetService("TweenService"):Create(
                                                n,
                                                TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                                {CFrame = u}
                                            )
                                            x:Play()
                                            wait(5)
                                        else
                                            wait(1)
                                            x:Play()
                                            wait(1)
                                        end
                                        wait()
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autofeatherbypass = false
        by:CreateToggle(
            "Auto Feather Bush",
            function(m)
                getgenv().autofeatherbypass = m
                if m then
                    au.LocalPlayer.Character:SetPrimaryPartCFrame(
                        au.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 32)
                    )
                    task.wait(0.01)
                    au.LocalPlayer.Character:SetPrimaryPartCFrame(
                        au.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 32)
                    )
                    wait(0.5)
                    TPBypass(true)
                else
                    BypassNOFLY()
                    local p = game:GetService("Players")
                    local n = p.LocalPlayer.Character.HumanoidRootPart
                    local u = n.CFrame
                    local v = 1000
                    local w = math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                    local x =
                        game:GetService("TweenService"):Create(
                        n,
                        TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                        {CFrame = u}
                    )
                    x:Play()
                    wait(0.1)
                    x:Play()
                end
                if m then
                    spawn(
                        function()
                            while autofeatherbypass do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            for b, c in pairs(game.workspace:GetChildren()) do
                                                if c.Name:find("Feather Bush") then
                                                    if c:FindFirstChildWhichIsA("BasePart") then
                                                        if
                                                            not c:FindFirstChild("Humanoid") and
                                                                c:FindFirstChild("Health")
                                                         then
                                                            if
                                                                (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                    S
                                                             then
                                                                R = c:FindFirstChildWhichIsA("BasePart")
                                                                S =
                                                                    (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        spawn(
                                            function()
                                                while autofeatherbypass do
                                                    wait()
                                                    pcall(
                                                        function()
                                                            local ac = {}
                                                            for b, c in pairs(U.Parent:GetChildren()) do
                                                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                                                if
                                                                    c:IsA("BasePart") and
                                                                        (n.Position - c.Position).Magnitude < 50
                                                                 then
                                                                    table.insert(ac, c)
                                                                end
                                                            end
                                                            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                                o.RelativeTime.Value,
                                                                ac
                                                            )
                                                        end
                                                    )
                                                end
                                            end
                                        )
                                        local u = U.CFrame + Vector3.new(0, U.Size.Y, 0)
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - U.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        local bz =
                                            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Subordinates.Notifications
                                        if bz:FindFirstChildWhichIsA("TextLabel") then
                                            wait(1)
                                            x:Cancel()
                                            local p = game:GetService("Players")
                                            local n = p.LocalPlayer.Character.HumanoidRootPart
                                            local u = n.CFrame
                                            local v = 1000
                                            local w =
                                                math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                                            local x =
                                                game:GetService("TweenService"):Create(
                                                n,
                                                TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                                {CFrame = u}
                                            )
                                            x:Play()
                                            wait(5)
                                        else
                                            wait(1)
                                            x:Play()
                                            wait(1)
                                        end
                                        wait()
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autofarmtreebush = false
        by:CreateToggle(
            "Auto Farm Tree/Bush",
            function(m)
                getgenv().autofarmtreebush = m
                if m then
                    au.LocalPlayer.Character:SetPrimaryPartCFrame(
                        au.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 32)
                    )
                    task.wait(0.01)
                    au.LocalPlayer.Character:SetPrimaryPartCFrame(
                        au.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 32)
                    )
                    wait(0.5)
                    TPBypass(true)
                else
                    BypassNOFLY()
                    local p = game:GetService("Players")
                    local n = p.LocalPlayer.Character.HumanoidRootPart
                    local u = n.CFrame
                    local v = 1000
                    local w = math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                    local x =
                        game:GetService("TweenService"):Create(
                        n,
                        TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                        {CFrame = u}
                    )
                    x:Play()
                    wait(0.1)
                    x:Play()
                end
                if m then
                    spawn(
                        function()
                            while autofarmtreebush do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            for a5, a6 in pairs(q:GetChildren()) do
                                                for b, c in pairs(a6:GetChildren()) do
                                                    if c:IsA("BasePart") then
                                                        if
                                                            c.Name:find("Trunk") or c.Name:find("Grass") or
                                                                c.Name:find("Leaves") or
                                                                c.Name:find("Bush")
                                                         then
                                                            if
                                                                not c.Parent:FindFirstChild("Humanoid") and
                                                                    c.Parent:FindFirstChild("Health")
                                                             then
                                                                if (n.Position - c.Position).Magnitude < S then
                                                                    R = c
                                                                    S = (n.Position - c.Position).Magnitude
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        spawn(
                                            function()
                                                while autofarmtreebush do
                                                    wait()
                                                    pcall(
                                                        function()
                                                            local ac = {}
                                                            for b, c in pairs(U.Parent:GetChildren()) do
                                                                if c:IsA("BasePart") then
                                                                    table.insert(ac, c)
                                                                end
                                                            end
                                                            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                                o.RelativeTime.Value,
                                                                ac
                                                            )
                                                        end
                                                    )
                                                end
                                            end
                                        )
                                        local u = U.CFrame + Vector3.new(0, U.Size.Y, 0)
                                        local v = 10
                                        local w =
                                            math.round(math.abs((n.Position - U.Position).Magnitude)) / tonumber(v)
                                        local x =
                                            game:GetService("TweenService"):Create(
                                            n,
                                            TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                            {CFrame = u}
                                        )
                                        local bz =
                                            game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Subordinates.Notifications
                                        if bz:FindFirstChildWhichIsA("TextLabel") then
                                            wait(1)
                                            x:Cancel()
                                            local p = game:GetService("Players")
                                            local n = p.LocalPlayer.Character.HumanoidRootPart
                                            local u = n.CFrame
                                            local v = 1000
                                            local w =
                                                math.round(math.abs((n.Position - n.Position).Magnitude)) / tonumber(v)
                                            local x =
                                                game:GetService("TweenService"):Create(
                                                n,
                                                TweenInfo.new(tonumber(w), Enum.EasingStyle.Linear),
                                                {CFrame = u}
                                            )
                                            x:Play()
                                            wait(5)
                                        else
                                            wait(1)
                                            x:Play()
                                            wait(1)
                                        end
                                        wait()
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        local bA = k:CreateTab("Main/Aura")
        getgenv().autofarmitems1aura = false
        bA:CreateToggle(
            "Auto Farm Items - Aura (Nearest)",
            function(m)
                getgenv().autofarmitems1aura = m
                spawn(
                    function()
                        if m then
                            spawn(
                                function()
                                    while autofarmitems1aura do
                                        wait()
                                        pcall(
                                            function()
                                                local p = game:GetService("Players")
                                                local n = p.LocalPlayer.Character.HumanoidRootPart
                                                local q = game:GetService("Workspace")
                                                local o = game:GetService("ReplicatedStorage")
                                                function getNear()
                                                    local R
                                                    local S = math.huge, nil
                                                    for a5, a6 in pairs(q:GetChildren()) do
                                                        for b, c in pairs(a6:GetChildren()) do
                                                            if c:IsA("BasePart") then
                                                                if
                                                                    not c.Parent:FindFirstChild("Humanoid") and
                                                                        c.Parent:FindFirstChild("Health")
                                                                 then
                                                                    if (n.Position - c.Position).Magnitude < S then
                                                                        R = c
                                                                        S = (n.Position - c.Position).Magnitude
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                    return R
                                                end
                                                local U = getNear()
                                                local ac = {}
                                                for b, c in pairs(U.Parent:GetChildren()) do
                                                    if c:IsA("BasePart") then
                                                        table.insert(ac, c)
                                                    end
                                                end
                                                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                                    o.RelativeTime.Value,
                                                    ac
                                                )
                                            end
                                        )
                                    end
                                end
                            )
                        end
                    end
                )
            end
        )
        getgenv().autokillcrittersaura = false
        bA:CreateToggle(
            "Auto Kill Critters(Mobs) - Aura(Nearest)",
            function(m)
                getgenv().autokillcrittersaura = m
                if m then
                    spawn(
                        function()
                            while autokillcrittersaura do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            local bB = {}
                                            local function bC(c)
                                                if
                                                    c:IsA("BasePart") and c.Parent.Name ~= p.LocalPlayer.Name and
                                                        c.Parent:FindFirstChild("Health")
                                                 then
                                                    table.insert(bB, c)
                                                end
                                            end
                                            for aq, a5 in pairs(q.Critters:GetChildren()) do
                                                for aq, c in pairs(a5:GetChildren()) do
                                                    bC(c)
                                                end
                                            end
                                            for b, c in pairs(bB) do
                                                if (n.Position - c.Position).Magnitude < S then
                                                    R = c
                                                    S = (n.Position - c.Position).Magnitude
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        local ac = {}
                                        for b, c in pairs(U.Parent:GetChildren()) do
                                            if c:IsA("BasePart") then
                                                table.insert(ac, c)
                                            end
                                        end
                                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                            o.RelativeTime.Value,
                                            ac
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autofeatheraura = false
        bA:CreateToggle(
            "Auto Feather Bush - Aura(Nearest)",
            function(m)
                getgenv().autofeatheraura = m
                if m then
                    spawn(
                        function()
                            while autofeatheraura do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            for b, c in pairs(game.workspace:GetChildren()) do
                                                if c.Name:find("Feather Bush") then
                                                    if c:FindFirstChildWhichIsA("BasePart") then
                                                        if
                                                            not c:FindFirstChild("Humanoid") and
                                                                c:FindFirstChild("Health")
                                                         then
                                                            if
                                                                (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude <
                                                                    S
                                                             then
                                                                R = c:FindFirstChildWhichIsA("BasePart")
                                                                S =
                                                                    (n.Position -
                                                                    c:FindFirstChildWhichIsA("BasePart").Position).Magnitude
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        local ac = {}
                                        for b, c in pairs(U.Parent:GetChildren()) do
                                            if c:IsA("BasePart") then
                                                table.insert(ac, c)
                                            end
                                        end
                                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                            o.RelativeTime.Value,
                                            ac
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        getgenv().autoswingtoolaura = false
        bA:CreateToggle(
            "Auto Swing Tool - Everything(Nearest)",
            function(m)
                getgenv().autoswingtoolaura = m
                if m then
                    spawn(
                        function()
                            while autoswingtoolaura do
                                wait()
                                pcall(
                                    function()
                                        local p = game:GetService("Players")
                                        local n = p.LocalPlayer.Character.HumanoidRootPart
                                        local q = game:GetService("Workspace")
                                        local o = game:GetService("ReplicatedStorage")
                                        function getNear()
                                            local R
                                            local S = math.huge, nil
                                            local bD = {}
                                            local function bC(c)
                                                if
                                                    c:IsA("BasePart") and c.Parent.Name ~= p.LocalPlayer.Name and
                                                        c.Parent:FindFirstChild("Health")
                                                 then
                                                    table.insert(bD, c)
                                                end
                                            end
                                            for aq, c in pairs(workspace:GetDescendants()) do
                                                bC(c)
                                            end
                                            for b, c in pairs(bD) do
                                                if (n.Position - c.Position).Magnitude < S then
                                                    R = c
                                                    S = (n.Position - c.Position).Magnitude
                                                end
                                            end
                                            return R
                                        end
                                        local U = getNear()
                                        local ac = {}
                                        for b, c in pairs(U.Parent:GetChildren()) do
                                            if c:IsA("BasePart") then
                                                table.insert(ac, c)
                                            end
                                        end
                                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(
                                            o.RelativeTime.Value,
                                            ac
                                        )
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        local bE = k:CreateTab("Credit")
        bE:CreateButton(
            "Made by, D┬úVIL#7068",
            function()
                setclipboard("Made by, D┬úVIL#7068")
            end
        )
        bE:CreateButton(
            "Discord",
            function()
                setclipboard("https://discord.gg/YT8pWBws7G")
            end
        )
        bE:CreateButton(
            "Destory Ui",
            function()
                for b, c in pairs(game.CoreGui:GetChildren()) do
                    if c.Name == "DEVIL_UI_Lib" then
                        c:Remove()
                    end
                end
            end
        )
        bE:CreateBlankLabel("If your using Bypass Script then you can get ban")
        bE:CreateBlankLabel("Using my script keep than in mind")
    end
)
