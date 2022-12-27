nomos = {}
nomos.scoreboard = {}

-- CONFIG


surface.CreateFont("nomoslibtab", {
    font = "Arial",
    extended = true,
    size = 15,
    weight = 50
})


-- FIN CONFIG
hook.Add("PostGamemodeLoaded", "DarkRP_Removing_FAdmin_ScoreBoard", function()
    if DarkRP then
        concommand.Remove("+FAdmin_menu")
        concommand.Remove("-FAdmin_menu")
        hook.Remove("ScoreboardShow", "FAdmin_scoreboard")
        hook.Remove("ScoreboardHide", "FAdmin_scoreboard")
        function FAdmin.ScoreBoard.DrawScoreBoard() end
        function FAdmin.ScoreBoard.ShowScoreBoard() return false end
        function FAdmin.ScoreBoard.HideScoreBoard() return false end
    end
end)

local function OpenSetTeam( ply )

    local setteam_menu = DermaMenu()

    for k, t in pairs(team.GetAllTeams())do
        setteam_menu:AddOption( t.Name, function() RunConsoleCommand("fadmin", "setteam", ply:UserID(), k) end )
    end

    setteam_menu:Open()

end

hook.Add("ScoreboardShow","LifeRP:Scoreboard:ScoreboardShow",function()

  if LocalPlayer():GetUserGroup() == "superadmin" or LocalPlayer():GetUserGroup() == "admin" or LocalPlayer():GetUserGroup() == "Modérateur" or LocalPlayer():GetUserGroup() == "moderateur-test" then
    if LocalPlayer():GetNWString("ModeAdmin") == "En service" then
if !IsValid(target) then target = LocalPlayer() end


             BaseBox = vgui.Create("NomosLib_Panel")
            BaseBox:SetSize(ScrW() - 50, ScrH() - 70)

            BaseBox:Center()
function BaseBox:Paint( w, h )
                    draw.RoundedBox(5, 0, 0, w, h, Color(52, 73, 94,100 ))

          draw.DrawText("            Nomos - Scoreboard", "LifeRP:MenuConnection::Police2", BaseBox:GetWide() / 3.5, 14, Color(24, 81, 181, 255))
                draw.DrawText("Joueur(s) : " .. #player.GetAll().." / "..game.MaxPlayers(), "Bariol35", BaseBox:GetWide() / 3.0, 60, color_white)
                                draw.DrawText("Ping : " .. LocalPlayer():Ping(), "Bariol35", BaseBox:GetWide() / 2.5, 110, color_white)
                                draw.DrawText("Joueur séléctioner : " .. target:GetName(), "Bariol35", BaseBox:GetWide() / 3.7, 150, color_white)
                                draw.DrawText("Grade : " .. target:GetUserGroup(), "Bariol35", BaseBox:GetWide() / 1.4, 225, color_white)
                                draw.DrawText("Argent : " .. target:getDarkRPVar("money") .. " €", "Bariol35", BaseBox:GetWide() / 1.4, 280, color_white)
                                                                draw.DrawText("Job : " .. target:getDarkRPVar("job") , "Bariol35", BaseBox:GetWide() / 1.4, 335, color_white)
                                                                draw.DrawText("Vie : " .. target:Health() , "Bariol35", BaseBox:GetWide() / 1.4, 390, color_white)
                                                                if not target:IsBot() then
                                                                draw.DrawText(target:SteamID() , "Bariol35", BaseBox:GetWide() / 1.42, 445, color_white)
                                                                draw.DrawText(target:SteamID64() , "Bariol35", BaseBox:GetWide() / 1.42, 500, color_white)
end
end


  TabScroolJoueurAdmin = vgui.Create( "DScrollPanel", BaseBox )
    TabScroolJoueurAdmin:SetSize( ScrW() / 3, ScrH() / 1.8 )
   TabScroolJoueurAdmin:SetPos(ScrW() / 4,200)

    local sbar = TabScroolJoueurAdmin:GetVBar()



     function sbar:Paint( w, h )
        end
        function sbar.btnUp:Paint( w, h )
        end
        function sbar.btnDown:Paint( w, h )
        end
        function sbar.btnGrip:Paint( w, h )
            draw.RoundedBox( 6, 0, 0, w-8, h, Color( 255, 255, 255,220 ) )
        end


 ScroolCommandAdminCommandAdmin = vgui.Create( "DScrollPanel", BaseBox )
    ScroolCommandAdminCommandAdmin:SetSize( 280,500 )
   ScroolCommandAdminCommandAdmin:SetPos(20,80)

    local sbar = ScroolCommandAdminCommandAdmin:GetVBar()



     function sbar:Paint( w, h )
        end
        function sbar.btnUp:Paint( w, h )
        end
        function sbar.btnDown:Paint( w, h )
        end
        function sbar.btnGrip:Paint( w, h )
            draw.RoundedBox( 6, 0, 0, w-8, h, Color( 255, 255, 255,220 ) )
        end



        local cleanup = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            cleanup:SetSize(250, 40)
            cleanup:SetPos(0, 0)
            cleanup:SetText(" ")
            cleanup:SetTextColor(Color(0, 0, 0, 255))

        function cleanup:Paint( w, h )

                          if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, Color(255, 0, 0, 100))

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, Color(255, 0, 0, 255))

end                        draw.SimpleText("Clean UP","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            cleanup.DoClick = function()

      RunConsoleCommand("_fadmin","cleanup")

                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous venez de Clean UP " )

  end


    local stopallsound = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            stopallsound:SetSize(250, 40)
            stopallsound:SetPos(0, 42)
            stopallsound:SetText("  ")
            stopallsound:SetTextColor(Color(0, 0, 0, 255))

    function stopallsound:Paint( w, h )

                       if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, Color(255, 0, 0, 100))

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, Color(255, 0, 0, 255))

end                        draw.SimpleText("Stop All Sound","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            stopallsound.DoClick = function()

      RunConsoleCommand("_fadmin","StopSounds")

                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous venez de Stop All Sound " )

  end





    local cleandecals = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            cleandecals:SetSize(250, 40)
            cleandecals:SetPos(0, 84)
            cleandecals:SetText(" ")
            cleandecals:SetTextColor(Color(0, 0, 0, 255))

   function cleandecals:Paint( w, h )
 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, Color(255, 0, 0, 100))

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, Color(255, 0, 0, 255))

end                        draw.SimpleText("Clean Decals","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            cleandecals.DoClick = function()

      RunConsoleCommand("_fadmin","ClearDecals")

                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous venez de Clean Decals " )

  end


 local tp = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            tp:SetSize(250, 40)
            tp:SetPos(0, 126)
            tp:SetText("")
            tp:SetTextColor(Color(0, 0, 0, 255))

    function tp:Paint( w, h )

     if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Téléporter","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            tp.DoClick = function()
        chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous téléportez ", target:GetName() )

      RunConsoleCommand("ulx","teleport",target:GetName())
            end

 local goto2 = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            goto2:SetSize(250, 40)
            goto2:SetPos(0, 168)
            goto2:SetText("")
            goto2:SetTextColor(Color(0, 0, 0, 255))

        function goto2:Paint( w, h )
     if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Goto","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

end

            goto2.DoClick = function()
                    chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous vous téléportez à ", target:GetName() )
      RunConsoleCommand("ulx","goto",target:GetName())
            end


             local return2 = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            return2:SetSize(250, 40)
            return2:SetPos(0, 210)
            return2:SetText("")
            return2:SetTextColor(Color(0, 0, 0, 255))

      function return2:Paint( w, h )

                                if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Return","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

end

            return2.DoClick = function()
                    chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous return ", target:GetName() )

      RunConsoleCommand("ulx","return",target:GetName())
            end

                      local respawn = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            respawn:SetSize(250, 40)
            respawn:SetPos(0, 252)
            respawn:SetText("")
            respawn:SetTextColor(Color(0, 0, 0, 255))

      function respawn:Paint( w, h )

                                 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Respawn","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

end

            respawn.DoClick = function()
                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous revive ", target:GetName() )

  net.Start("Nomos:ContextMenu::Revive")
                            net.WriteEntity(target)
                            net.SendToServer()
  end


                      local setteam = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            setteam:SetSize(250, 40)
            setteam:SetPos(0, 294)
            setteam:SetText(" ")
            setteam:SetTextColor(Color(0, 0, 0, 255))
function setteam:Paint( w, h )
 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Set Team","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            setteam.DoClick = function()
                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous set team ", target:GetName() )

    OpenSetTeam( target )

  end



                      local Spectate = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            Spectate:SetSize(250, 40)
            Spectate:SetPos(0, 336)
            Spectate:SetText("")
            Spectate:SetTextColor(Color(0, 0, 0, 255))

   function Spectate:Paint( w, h )
 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Spectate","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            Spectate.DoClick = function()

      RunConsoleCommand("FSpectate",target:GetName())

                  chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous Spectate ", target:GetName() )

  end



  if LocalPlayer():IsSuperAdmin() then

  cleanup:SetVisible(true)
    stopallsound:SetVisible(true)
  cleandecals:SetVisible(true)

else


  cleanup:SetVisible(false)
    stopallsound:SetVisible(false)
  cleandecals:SetVisible(false)
end

                      local freeze = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            freeze:SetSize(250, 40)
            freeze:SetPos(0, 378)
            freeze:SetText("")
            freeze:SetTextColor(Color(0, 0, 0, 255))
function freeze:Paint( w, h )

                            if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Freeze","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end

            freeze.DoClick = function()
                            chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous freeze ", target:GetName() )

     net.Start("Nomos:ContextMenu::freeze")
                            net.WriteEntity(target)
                            net.WriteString("frezze")
                            net.SendToServer()

  end

                 local unfreeze = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            unfreeze:SetSize(250, 40)
            unfreeze:SetPos(0, 420)
            unfreeze:SetText("")
            unfreeze:SetTextColor(Color(0, 0, 0, 255))

   function unfreeze:Paint( w, h )
 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("UnFreeze","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)


end
            unfreeze.DoClick = function()
                                      chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous unfreeze ", target:GetName() )

     net.Start("Nomos:ContextMenu::freeze")
                            net.WriteEntity(target)
                            net.WriteString("unfrezze")
                            net.SendToServer()

  end



                 local steamid = vgui.Create("NomosLib_Bouton", ScroolCommandAdminCommandAdmin)
            steamid:SetSize(250, 40)
            steamid:SetPos(0, 462)
            steamid:SetText("")
            steamid:SetTextColor(Color(0, 0, 0, 255))

function steamid:Paint( w, h )
 if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h, couleurhovered)

                 else
                                                    draw.RoundedBox(5, 0, 0, w, h, couleurnormal)

end                        draw.SimpleText("Steam ID","Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)



end

            steamid.DoClick = function()
                                      chat.AddText( Color(255, 0, 0, 255), "ADMIN ", Color(255, 255, 255, 255), "Vous obtenez le steamID de ", target:GetName() )

   notification.AddLegacy( "Steam ID Copié !", NOTIFY_UNDO, 2 )
surface.PlaySound( "buttons/button15.wav" )
SetClipboardText(target:SteamID())


  end


local function ReloadMenuBoutonPlayer()
    for k,v in pairs(player.GetAll()) do



   playerbutton = vgui.Create( "NomosLib_Bouton", TabScroolJoueurAdmin )
          playerbutton:SetPos( 50, 40*k-30)




       playerbutton:SetSize( ScrW() / 3, 42 )
      playerbutton:SetText("")
      playerbutton:SetZPos(-25)
        playerbutton:SetDrawOnTop(true)

       playerbutton.Paint = function(self, w,h)
             if !IsValid(v) then
                TabScroolJoueurAdmin:Clear()
                ReloadMenuBoutonPlayer()
                end
                      if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h,  Color(22, 127, 207, 100))

                 else
                                                                  draw.RoundedBox(5, 0, 0, w, h, team.GetColor(v:Team()))

end          draw.SimpleText(v:GetName(),"Bariol25",ScrW() / 7,"+13",Color(0,0,0,255),TEXT_ALIGN_CENTER)

        end

       playerbutton.DoClick = function()

target = v

      end



end
end
ReloadMenuBoutonPlayer()


end
end

    if LocalPlayer():GetNWString("ModeAdmin") != "En service" or LocalPlayer():GetUserGroup() == "user" then
if !IsValid(target2) then target2 = LocalPlayer() end


             BaseBox = vgui.Create("DFrame")
            BaseBox:SetSize(700, ScrH() - 50)
            BaseBox:SetTitle("")
            BaseBox:ShowCloseButton(false)
            BaseBox:SetVisible(true)
            BaseBox:MakePopup()
            BaseBox:SetDraggable(false)
            BaseBox:Center()
            BaseBox:SetContentAlignment(5)

            BaseBox.Paint = function(self, w, h)
                draw.RoundedBox(10, 0, 0, w, h, Color(52, 73, 94,100 ))
                draw.DrawText("            Nomos - Scoreboard", "LifeRP:MenuConnection::Police2", BaseBox:GetWide() / 12, 4, Color(24, 81, 181, 255))
                draw.DrawText("Joueur(s) : " .. #player.GetAll().." / "..game.MaxPlayers(), "Bariol35", BaseBox:GetWide() / 4, 70, color_white)
                                draw.DrawText("Ping : " .. LocalPlayer():Ping(), "Bariol35", BaseBox:GetWide() / 2.5, 125, color_white)


            end

  tabscrool = vgui.Create( "DScrollPanel", BaseBox )
    tabscrool:SetSize( 625,ScrH() / 1.50)
   tabscrool:SetPos(8,200)

    local sbar = tabscrool:GetVBar()



     function sbar:Paint( w, h )
        end
        function sbar.btnUp:Paint( w, h )
        end
        function sbar.btnDown:Paint( w, h )
        end
        function sbar.btnGrip:Paint( w, h )
            draw.RoundedBox( 6, 0, 0, w-8, h, Color( 255, 255, 255,220 ) )
        end



local function ReloadMenuBoutonPlayer()
    for k,v in pairs(player.GetAll()) do



   playerbutton = vgui.Create( "NomosLib_Bouton", tabscrool )
          playerbutton:SetPos( 50, 40*k-20)




       playerbutton:SetSize( 550, 42 )
      playerbutton:SetText("")
      playerbutton:SetZPos(-25)
        playerbutton:SetDrawOnTop(true)

       playerbutton.Paint = function(self, w,h)
             if !IsValid(v) then
                TabScroolCommandAdminJoueur:Clear()
                ReloadMenuBoutonPlayer()
                end

                        if self:IsHovered() then
                     draw.RoundedBox(0,0,0,w,h,  Color(22, 127, 207, 100))

                 else
                                                                  draw.RoundedBox(5, 0, 0, w, h, Color(22, 127, 207, 255))

end
                                         draw.SimpleText(v:GetName(),"Bariol25",w/2,"8",textec,TEXT_ALIGN_CENTER)

  end


       playerbutton.DoClick = function()
       notification.AddLegacy( "Steam ID Copié !", NOTIFY_UNDO, 2 )
surface.PlaySound( "buttons/button15.wav" )
target2 = v

SetClipboardText(target2:SteamID())

      end



end
end
ReloadMenuBoutonPlayer()


end


end)



hook.Add("ScoreboardHide","LifeRP:Scoreboard:ScoreboardHide",function()



BaseBox:Close()


end)


surface.CreateFont("LifeRP:MenuConnection::Police1", {
    font = "Trebuchet18",
    size = 40,
    weight = 800
})
surface.CreateFont("LifeRP:MenuConnection::Police2", {
    font = "Trebuchet18",
    size = 40,
    weight = 800
})


surface.CreateFont("Eryzium:MenuConnection::Police3", {
    font = "Trebuchet18",
    size = 40,
    weight = 800
})





surface.CreateFont( "Bariol25", {
            font = "Bariol Regular",
            extended = false,
            size = 25,
            weight = 600,
            blursize = 0,
            scanlines = 0,
            antialias = true,
            underline = false,
            italic = false,
            strikeout = false,
            symbol = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        } )

surface.CreateFont( "Bariol35", {
            font = "Bariol Regular",
            extended = false,
            size = ScrW() / 40,
            weight = 600,
            blursize = 0,
            scanlines = 0,
            antialias = true,
            underline = false,
            italic = false,
            strikeout = false,
            symbol = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        } )
surface.CreateFont( "Bariol45", {
            font = "Bariol Regular",
            extended = false,
            size = ScrW() / 50,
            weight = 600,
            blursize = 0,
            scanlines = 0,
            antialias = true,
            underline = false,
            italic = false,
            strikeout = false,
            symbol = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
        } )
