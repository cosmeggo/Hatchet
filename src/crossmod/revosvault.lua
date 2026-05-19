SMODS.Joker({
	key = "sephiprinter",
	atlas = "HatchetCrossJokers",
	rarity = "crv_p",
	cost = 10,
    pos = { x = 0, y = 0 },
	unlocked = true,
	discovered = false,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.setting_blind then
			RevosVault.pseudorandom_printer({card = card, area = G.consumeables, sets = "hatch_sephirot" })
		end
	end,
	in_pool = function(self, wawa, wawa2)
		return true
	end,
})

-- credit to TheOneGoodAli, Feli and Eris for support.
-- credit to Revo's Vault for the code.
