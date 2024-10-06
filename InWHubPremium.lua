local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "InW Hub Premium",
   LoadingTitle = "Add friends on Facebook",
   LoadingSubtitle = "by FB: Bank Kesee",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "InW Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "https://discord.gg/bA7hxUZF", 
      RememberJoins = true 
   },
   KeySystem = true, 
   KeySettings = {
      Title = "InW Hub | @rattanakorn0242",
      Subtitle = "Key System",
      Note = " ",
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"70905759"}
   }
})






Rayfield:LoadConfiguration()
