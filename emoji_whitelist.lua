-- use this for emoji shiitlist

local whitelistedPlayers = {
    ["forsuremicah"] = "[⭐] ",
    ["YT_Hacket"] = "[😎]",
    ["e_i5v"] = "[👑] ",
    ["dattwinmade"] = "[⭐] ",
    ["hatelvst"] = "[😎]",
    ["Skyriela"] = "[😎]",
    ["f_xws"] = "[⭐]",
    ["marktrujillo72"] = "[⭐]",
    ["Twinthedev"] = "[⭐]",
    ["torsotapper"] = "[🤪]",
    ["yzuv"] = "[😎]",
    ["27k_GAMING"] = "[😎]"
}

-- Function to update display names for whitelisted players
local function updateDisplayNames()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if whitelistedPlayers[player.Name] then
            local character = player.Character
            if character and character:FindFirstChildWhichIsA("Humanoid") then
                local humanoid = character:FindFirstChildWhichIsA("Humanoid")
                humanoid.DisplayName = whitelistedPlayers[player.Name] .. player.DisplayName
            end
        end
    end
end

-- Connect the function to the PlayerAdded event to handle new players joining
game.Players.PlayerAdded:Connect(
    function(player)
        -- Wait for the player's character to load
        player.CharacterAdded:Connect(
            function(character)
                -- Update display name when character is added
                updateDisplayNames()
            end
        )
    end
)
