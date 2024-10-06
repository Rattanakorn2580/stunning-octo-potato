local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "InW Hub Premium",
   LoadingTitle = "You can join my Discord here",
   LoadingSubtitle = "by Benk Kesee",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "InW Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "https://discord.gg/bA7hxUZF", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "InW Hub Premium | @rattanakorn0242",
      Subtitle = "Key System",
      Note = "Join The Discord | https://discord.gg/bA7hxUZF",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"25809"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})





Rayfield:LoadConfiguration()
