MODS = {
    [1210577474] = true; -- Test
}

ADMIN = {
    [0000000000] = true; -- Free

--// Don't mess with anything below this
function initiateNames()
    game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Character then
            if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🅿] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if table.find(MODS, v.UserId) then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if table.find(ADMIN, v.UserId) then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
        end
    end
end

local successful, errored = pcall(initiateNames)
return MODS
