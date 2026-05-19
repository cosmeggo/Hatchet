-- Burdened
SMODS.Sticker {
    key = "burdened",
    badge_colour = HEX '3abd4c',
    pos = { x = 0, y = 0 },
    needs_enable_flag = true,
    atlas = 'HatchetStickers',

    should_apply = function(self, card, center, area, bypass_roll)
        local default_check = SMODS.Sticker.should_apply(self, card, center, area, bypass_roll)
        local shop_check = (area == G.shop_jokers) or (area == G.pack_cards) -- credit to Bunco mod
        return default_check and shop_check
    end,

    -- Credit to Metanite64 for the code: this is taken from Astro's Starspace Mod (with permission.)
    -- Credit to Eris for support on the tooltips (NOTE: The tooltip has been merged into en-us.lua)
    apply = function(self, card, val)
        if val then
            card.ability.extra_slots_used = card.ability.extra_slots_used + 1
        else
            card.ability.extra_slots_used = card.ability.extra_slots_used - 1
        end
        card.ability[self.key] = val
    end,
}