-- Infernal Stake
SMODS.Stake {
    name = "Infernal Stake",
    key = "infernal",
    prefix_config = {  applied_stakes = { mod = false } },
    applied_stakes = { "gold" },
    pos = { x = 0, y = 0 },
    sticker_pos = { x = 1, y = 0 },
    atlas = 'HatchetStakes',
    sticker_atlas = 'HatchetStickers',
    shiny = true,
    modifiers = function()
        G.GAME.starting_params.hand_size = G.GAME.starting_params.hand_size - 1
    end,    
    colour = HEX("e48571")
}

-- Tempest Stake
SMODS.Stake {
    name = "Tempest Stake",
    key = "tempest",
    prefix_config = {  applied_stakes = { mod = false } },
    applied_stakes = { "hatch_infernal" },
    pos = { x = 1, y = 0 },
    sticker_pos = { x = 2, y = 0 },
    atlas = 'HatchetStakes',
    shiny = true,
    sticker_atlas = 'HatchetStickers',
	modifiers = function()
		G.GAME.win_ante = 10 -- credit to the cryptid mod
	end,
    colour = HEX("d9bf9a")
}

-- Abyssal Stake
SMODS.Stake {
    name = "Abyssal Stake",
    key = "abyssal",
    prefix_config = {  applied_stakes = { mod = false } },
    applied_stakes = { "hatch_tempest" },
    pos = { x = 2, y = 0 },
    sticker_pos = { x = 3, y = 0 },
    atlas = 'HatchetStakes',
    shiny = true,
    sticker_atlas = 'HatchetStickers',
    modifiers = function()
        G.GAME.modifiers.no_blind_reward = G.GAME.modifiers.no_blind_reward or {}
        G.GAME.modifiers.no_blind_reward.Small = true
        G.GAME.modifiers.no_blind_reward.Big = true
    end,
    colour = HEX("4c96d5")
}

-- Vernal Stake
SMODS.Stake {
    name = "VernaL Stake",
    key = "vernal",
    prefix_config = {  applied_stakes = { mod = false } },
    applied_stakes = { "hatch_abyssal" },
    pos = { x = 3, y = 0 },
    sticker_pos = { x = 4, y = 0 },
    atlas = 'HatchetStakes',
    shiny = true,
    sticker_atlas = 'HatchetStickers',
    modifiers = function()
        G.GAME.modifiers.enable_hatch_burdened = true
    end,
    colour = HEX("6cbda6")
}

-- Ethereal Stake
SMODS.Stake {
    name = "Ethereal Stake",
    key = "ethereal",
    prefix_config = {  applied_stakes = { mod = false } },
    applied_stakes = { "hatch_verdant" },
    pos = { x = 0, y = 1 },
    sticker_pos = { x = 0, y = 1 },
    atlas = 'HatchetStakes',
    shiny = true,
    sticker_atlas = 'HatchetStickers',
    modifiers = function()
        G.GAME.modifiers.scaling = (G.GAME.modifiers.scaling or 2) + 2
    end,
    colour = HEX("604f76")
}