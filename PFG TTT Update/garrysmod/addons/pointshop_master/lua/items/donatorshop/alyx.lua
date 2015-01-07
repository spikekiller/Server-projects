ITEM.Name = 'Alyx'
ITEM.Price = 10000
ITEM.Model = 'models/player/alyx.mdl'
ITEM.AdminOnly = true
ITEM.AllowedUserGroups = {"admin", "Donator", "Owner", "Co-Owner", "Coder", "Admin"} 


function ITEM:OnEquip(ply, modifications)
	if not ply._OldModel then
		ply._OldModel = ply:GetModel()
	end
	
	timer.Simple(1, function() ply:SetModel(self.Model) end)
end

function ITEM:OnHolster(ply)
	if ply._OldModel then
		ply:SetModel(ply._OldModel)
	end
end

function ITEM:PlayerSetModel(ply)
	ply:SetModel(self.Model)
end