ITEM.Name = 'Voodoo JuJu'
ITEM.Price = 650
ITEM.Model = 'models/player/items/demo/demo_bonehat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -5) + (ang:Up() * 0)
	
	return model, pos, ang
end