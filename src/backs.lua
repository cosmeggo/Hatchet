-- Chevron Deck
SMODS.Back {
    key = 'chevron',
    pos = { x = 0, y = 0 },
    config = {hand_size = -2, discards = 2},
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'HatchetDecks',
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.hand_size, self.config.discards } }
    end,
}

-- Holy Deck
SMODS.Back {
    key = 'holy',
    pos = { x = 1, y = 0 },
    config = { sephirot_rate = 4, consumables = { 'c_hatch_kether' }  },
    unlocked = true,
    discovered = true,
    atlas = 'HatchetDecks',

    apply = function(self, back)
        -- Apply the spectral rate
        G.GAME.hatch_sephirot_rate = self.config.sephirot_rate
    end,
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.sephirot_rate, self.config.consumables[1] } }
    end,
}

-- Harlequin Deck
SMODS.Back {
    key = 'harlequin',
    pos = { x = 2, y = 0 },
    unlocked = true,
    no_collection = false,
    atlas = 'HatchetDecks',

    apply = function(self, back)
        SMODS.change_booster_limit(1)
    end,
}

-- Pilot Deck
SMODS.Back {
    key = 'pilot',
    pos = { x = 3, y = 0 },
    config = { vouchers = { 'v_reroll_surplus', 'v_clearance_sale' } },
    unlocked = true,
    no_collection = false,
    atlas = 'HatchetDecks',

    loc_vars = function(self, info_queue, back)
        return {
            vars = { localize { type = 'name_text', key = self.config.vouchers[1], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.vouchers[2], set = 'Voucher' },
            }
        }
    end
}

-- Numinous Deck
SMODS.Back {
    key = 'numinous',
    pos = { x = 4, y = 0 },
    config = { divine_rate = 4 },
    unlocked = false,
    atlas = 'HatchetDecks',

    apply = function(self, back)
        -- Apply the spectral rate
        G.GAME.hatch_divine_rate = self.config.divine_rate
    end,
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.divine_rate } }
    end,
    locked_loc_vars = function(self, info_queue, back)
        return {
            vars = {
                localize { type = 'name_text', set = 'Stake', key = 'stake_gold' },
                colours = { get_stake_col(8) }
            }
        }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_stake' and get_deck_win_stake() >= 8
    end
}