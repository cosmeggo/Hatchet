Hatchet = SMODS.current_mod

--ATLASES
SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "HatchetJokers", 
    path = "HatchetJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetConsumables", 
    path = "HatchetConsumables.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetBoosters", 
    path = "HatchetBoosters.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetEnhancements", 
    path = "HatchetEnhancements.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetDecks", 
    path = "HatchetDecks.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetStickers", 
    path = "HatchetStickers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetStakes", 
    path = "HatchetStakes.png",
    px = 29,
    py = 29, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "HatchetBlinds", 
    path = "HatchetBlinds.png", 
    px = 34,
    py = 34, 
    frames = 21, 
    atlas_table = "ANIMATION_ATLAS"
})

--loading src files
assert(SMODS.load_file("src/backs.lua"))()
assert(SMODS.load_file("src/blinds.lua"))()
assert(SMODS.load_file("src/boosters.lua"))()
assert(SMODS.load_file("src/challenges.lua"))()
assert(SMODS.load_file("src/editions.lua"))()
assert(SMODS.load_file("src/enhancements.lua"))()
assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/rarities.lua"))()
assert(SMODS.load_file("src/sephirot.lua"))()
assert(SMODS.load_file("src/sounds.lua"))()
assert(SMODS.load_file("src/stakes.lua"))()
assert(SMODS.load_file("src/stickers.lua"))()


SMODS.ConsumableType {
    key = 'divine',
    primary_colour = HEX('484cdb'),
    secondary_colour = HEX('484cdb'),
    collection_rows = { 4, 5 },
    shop_rate = 0,
    cards = {
        ['c_hatch_daat'] = true,
        ['c_hatch_soulofhatchet'] = true
    },
    loc_txt = {
        name = "Divine",
        collection = "Divine Cards",
    }
}
--- Main Menu Colours (Credit to Cryptid and JoyousSpring)
local game_main_menu_ref = Game.main_menu
function Game:main_menu(change_context)
    local ret = game_main_menu_ref(self, change_context)

        local colours = { c1 = HEX("4d5670"), c2 = HEX("fd5f55") }
        G.SPLASH_BACK:define_draw_steps({
            {
                shader = "splash",
                send = {
                    { name = "time",       ref_table = G.TIMERS, ref_value = "REAL_SHADER" },
                    { name = "vort_speed", val = 0.4 },
                    { name = "colour_1",   ref_table = colours,  ref_value = "c1" },
                    { name = "colour_2",   ref_table = colours,      ref_value = "c2" },
                },
            },
        })
    return ret
end

-- SMODS Optional Features
SMODS.current_mod.optional_features = {
    retrigger_joker = true,
    post_trigger = true,
    quantum_enhancements = true,
    cardareas = {
        discard = true,
        deck = true
    }
}

-- Credit to NopeTooFast
SMODS.current_mod.menu_cards = function()
return {
  { key = 'j_hatch_hatchet' },
  remove_original = true
} end