      local virtualUser = game:GetService('VirtualUser')
      virtualUser:CaptureController()
      
      virtualUser:SetKeyDown('0x77') 
      wait(30)
      virtualUser:SetKeyUp('0x77') 
      localplayer = game.Players.LocalPlayer
      local character = localplayer.Character
      localplayer.Character.HumanoidRootPart.CFrame = 12.6650009, 7.40846205, -23.029417, 0.950770557, -0.0132862916, -0.309610814, -8.89325747e-06, 0.999079347, -0.0429007225, 0.309895754, 0.0407915004, 0.949895084
      wait(1)
