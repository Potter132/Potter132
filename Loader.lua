local Player = game:GetService("Players")
local LocalPlayer = Player.LocalPlayer

function Equipitem(v)
    if LocalPlayer.Backpack:FindFirstChild(v) then
        LocalPlayer.Backpack[v].Parent = LocalPlayer.Character
    end
end

-- Equip Rod
local function EquipRod()
    for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.Name:lower():find("rod") then
            Equipitem(v.Name)
        end
    end
end

EquipRod()
