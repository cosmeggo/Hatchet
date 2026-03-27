-- Chevron Deck
SMODS.Back {
    key = 'chevron',
    pos = { x = 0, y = 0 },
    config = {hand_size = -2, discards = 2},
    loc_txt = {
        name = 'Chevron Deck',
        text = {
            '{C:attention}-2{} hand size',
            '{C:red}+2{} discards every round'
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'CustomDecks',
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.hand_size, self.config.discards } }
    end,
}

-- Holy Deck
SMODS.Back {
    key = 'holy',
    pos = { x = 1, y = 0 },
    config = { sephirot_rate = 2, consumables = { 'c_hatch_kether' }  },
    loc_txt = {
        name = 'Holy Deck',
        text = {
            '{C:green}Sephirot{} cards may appear in the',
            'shop, start with a {C:green}Kether{} card'
        },
    },
    unlocked = true,
    atlas = 'CustomDecks',

    apply = function(self, back)
        -- Apply the spectral rate
        G.GAME.sephirot_rate = self.config.sephirot_rate
    end,
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.sephirot_rate, self.config.consumables[1] } }
    end,
    check_for_unlock = function(self, args)
        return args.type == 'win_stake' and get_deck_win_stake() >= 10
    end
}

-- Harlequin Deck
SMODS.Back {
    key = 'harlequin',
    pos = { x = 2, y = 0 },
    loc_txt = {
        name = 'Harlequin Deck',
        text = {
            '{C:attention}+1{} booster pack per shop',
        },
    },
    unlocked = false,
    no_collection = false,
    atlas = 'CustomDecks',

    apply = function(self, back)
        SMODS.change_booster_limit(1)
    end,

    check_for_unlock = function(self, args)
        return args.type == 'win_stake' and get_deck_win_stake() >= 9
    end
}

-- Pilot Deck
SMODS.Back {
    key = 'pilot',
    pos = { x = 3, y = 0 },
    config = { vouchers = { 'v_reroll_surplus', 'v_clearance_sale' } },
    loc_txt = {
        name = 'Pilot Deck',
        text = {
            'Start run with',
            '{C:green}#1#{},',
            'and {C:attention}#2#{}',
        },
    },
    unlocked = false,
    no_collection = false,
    atlas = 'CustomDecks',

    loc_vars = function(self, info_queue, back)
        return {
            vars = { localize { type = 'name_text', key = self.config.vouchers[1], set = 'Voucher' },
                localize { type = 'name_text', key = self.config.vouchers[2], set = 'Voucher' },
            }
        }
    end,

    check_for_unlock = function(self, args)
        return args.type == 'win_stake' and get_deck_win_stake() >= 10
    end
}