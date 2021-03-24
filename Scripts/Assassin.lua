game.StarterGui:SetCore("SendNotification", {
Title = "Assassin Kill Button"; -- the title (ofc)
Text = "Has been Loaded"; -- what the text says (ofc)
})
game.StarterGui:SetCore("SendNotification", {
Title = "Credit"; -- the title (ofc)
Text = "Drex#2504 and SkieHacker"; -- what the text says (ofc)
})
wait(3)
print(" ---------------------------------------------------------------------- ")
print('Try not to move when the game starts/when the script is active, Also ignore the errors in console, Oh yeah also sometimes you fall over and die for no reason lmao')
print('Reminders: Make sure the roblox window is focused')
print(" ---------------------------------------------------------------------- ")
game.StarterGui:SetCore("SendNotification", {
Title = "Notice"; -- the title (ofc)
Text = "Please Press F9 and Read The Instruction, Thank you"; -- what the text says (ofc)
})
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Panda-Respiratory/Panda-UI-Library/main/Libraries/Main"))()

local window = library:Window("Assassin")


window:Button("Start Farming", function()
local lp = game.Players.LocalPlayer

game.RunService.RenderStepped:Connect(function()
   pcall(function()
       spawn(function()
           if game.Players.LocalPlayer.Backpack.Knife then
               keypress(0x31)
               keyrelease(0x31)
           end
       end)
       spawn(function()
           if lp.PlayerGui.ScreenGui.UI.Target.Visible then
               local target = lp.PlayerGui.ScreenGui.UI.Target.TargetText.Text
               lp.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame
               mouse1click()
           end
       end)
   end)
end)
end)