-----------------------------------
-- Area: Norg
--  NPC: Vuliaie
-- Type: Tenshodo Merchant
-- !pos -24.259 0.891 -19.556 252
-----------------------------------
local ID = zones[xi.zone.NORG]
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if player:hasKeyItem(xi.ki.TENSHODO_MEMBERS_CARD) then
        if player:sendGuild(60424, 9, 23, 7) then
            player:showText(npc, ID.text.VULIAIE_SHOP_DIALOG)
        end
    else
        -- player:startEvent(150)
    end
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
