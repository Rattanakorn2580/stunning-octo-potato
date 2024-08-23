local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Select Player!")

Section:NewToggle("Bring Fruit", " ", function(t) 
_G.Fruittype = t
        {"Light Fruit","Rumble Fruit","Magma Fruit","Quake Fruit","Phoenix Fruit","Vampire Fruit","Dark Fruit","Smoke Fruit","Hollow Fruit","Snow Fruit","Venom Fruit","Ope Fruit","Gas Fruit","Sand Fruit","Flare Fruit","Candy Fruit","Plasma Fruit","Gravity Fruit","Chilly Fruit"}
    end

spawn(function() 
while wait() do 
if _G.Fruittype then 
pcall(function() 
workspace.Trees.Handle.Clickable.Retum:FireServer()
end) 
end 
end 
end)
