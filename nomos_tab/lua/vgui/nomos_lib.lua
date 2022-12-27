local PANEL = {}
local BOUTON = {}
local blur = Material("pp/blurscreen")
surface.CreateFont("TEST",{

    font = "Roboto",
    size = 25,
    weight = 800,

})


function PANEL:Init()
            self:SetTitle("")
   self:ShowCloseButton(false)
            self:SetVisible(true)
            self:MakePopup()
            self:SetDraggable(false)
                        self:SetContentAlignment(5)

end



vgui.Register( "NomosLib_Panel", PANEL, "DFrame" )



function BOUTON:Init() 
            self:SetText("")
            self:SetTextColor(Color(0, 0, 0, 255))
end



vgui.Register( "NomosLib_Bouton", BOUTON, "DButton" )

