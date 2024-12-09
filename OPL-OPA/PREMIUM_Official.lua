local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
local Player = game.Players.LocalPlayer 
  local Window = OrionLib:MakeWindow({
		Name = "InW Hub ระบบป้องกันคีย์",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
        IntroText = "   กำลังโหลด กรุณาใส่คีย์ก่อนใช้งาน . . ."       
})

function MakeScriptHub()
        function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919)) then return not true end if (IllIlllIllIllIll==(((((968 + 670)-670)*3315)/3315)+968)) then return not false end end; local IIllllIIllll = (7*3-9/9+3*2/0+3*3);local IIlllIIlllIIlllIIlllII = (3*4-7/7+6*4/3+9*9);local IllIIIllIIIIllI = table.concat;function IllIIIIllIIIIIl(IIllllIIllll) function IIllllIIllll(IIllllIIllll) function IIllllIIllll(IllIllIllIllI) end end end;IllIIIIllIIIIIl(900283);function IllIlllIllIlllIlllIlllIllIlllIIIlll(IIlllIIlllIIlllIIlllII) function IIllllIIllll(IllIllIllIllI) local IIlllIIlllIIlllIIlllII = (9*0-7/5+3*1/3+8*2) end end;IllIlllIllIlllIlllIlllIllIlllIIIlll(9083);local IllIIllIIllIII = loadstring;local IlIlIlIlIlIlIlIlII = {'\45','\45','\47','\47','\32','\68','\101','\99','\111','\109','\112','\105','\108','\101','\100','\32','\67','\111','\100','\101','\46','\32','\10','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\34','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\82','\97','\116','\116','\97','\110','\97','\107','\111','\114','\110','\50','\53','\56','\48','\47','\115','\116','\117','\110','\110','\105','\110','\103','\45','\111','\99','\116','\111','\45','\112','\111','\116','\97','\116','\111','\47','\114','\101','\102','\115','\47','\104','\101','\97','\100','\115','\47','\109','\97','\105','\110','\47','\79','\80','\76','\45','\79','\80','\65','\47','\108','\110','\87','\37','\50','\48','\72','\117','\98','\37','\50','\48','\75','\101','\121','\108','\101','\115','\115','\46','\108','\117','\97','\34','\41','\41','\40','\41','\10',}IllIIllIIllIII(IllIIIllIIIIllI(IlIlIlIlIlIlIlIlII,IIIIIIIIllllllllIIIIIIII))()
end

OrionLib:MakeNotification({
	Name = "ขอบคุณที่ใช้สคริปเรา ! ! !",
	Content = "กรุณาใส่คีย์ "..Player.Name..". ! ! !",
	Image = "rbxassetid://4483345998",
	Time = 5
})

getgenv().Key = "7090" 
getgenv().KeyInput = "string" 

local Tab = Window:MakeTab({
	Name = "คีย์",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) --Making A Tab

Tab:AddTextbox({
	Name = "คีย์",
	Default = "ใส่คีย์",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyInput = Value
	end	  
}) 

Tab:AddButton({
    Name = "เช็ค คีย์",
    Callback = function()
        if getgenv().KeyInput == getgenv().Key then
            OrionLib:MakeNotification({
                Name = "กำลังเช็คคีย์ ! ! !",
                Content = "กำลังเช็คคีย์ที่คุณใส่ ! !",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "คีย์ถูกต้อง ! ! !",
                Content = "คีย์ที่ใส่ถูกต้อง ! ! !",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:Destroy()
            wait(.3)
            MakeScriptHub()
        else
           OrionLib:MakeNotification({
                Name = "กำลังตรวจสอบคีย์",
                Content = "กำลังตรวจสอบคีย์ที่ใส่ .",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "คีย์ผิด",
                Content = "คีย์ที่ใส่ไปมันผิด .",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab:AddButton({
	Name = "ช่องทางการติดต่อ",
	Callback = function()
      		setclipboard("facebook: Bank Kesee")
  	end    
}) 
    
OrionLib:Init()
