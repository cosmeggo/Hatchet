-- Hatchet
SMODS.Joker {
    key = "hatchet",
    config = { extra = { xmult = 2.5 } },
    pos = { x = 0, y = 0 },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.hands_played == 0 then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.after and G.GAME.current_round.hands_played == 0 then
            SMODS.destroy_cards(context.full_hand, nil, nil, true)
            return {
                message = "Felled!",
                colour = G.C.RED,
            }
        end
    end,
}

-- Handout
SMODS.Joker {
    key = "handout",
    config = { extra = { dollars = 1 } },
    pos = { x = 1, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars } }
    end,

    calc_dollar_bonus = function(self, card)
        return card.ability.extra.dollars * G.GAME.current_round.discards_left
    end
}

-- Blue Shoes
SMODS.Joker {
    key = "blueshoes",
    config = { extra = { chips = 200, chips_sub = 50, } },
    pos = { x = 2, y = 0 },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_sub } }
    end,

    calculate = function(self, card, context)
        if context.poker_hand_changed == true then
            if card.ability.extra.chips - card.ability.extra.chips_sub <= 0 then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize('k_extinct_ex'),
                    colour = G.C.CHIPS
                }
            else
                card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chips_sub
                return {
                    message = localize { type = 'variable', key = 'a_chips_minus', vars = { card.ability.extra.chips_sub } },
                    colour = G.C.CHIPS
                }
            end
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

-- Earthquake
SMODS.Joker {
    key = "earthquake",
    config = { extra = { chips = 0, chip_mod = 25 } },
    pos = { x = 3, y = 0 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chip_mod } }
    end,

    calculate = function(self, card, context)
        if context.remove_playing_cards then
            card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_mod * #context.removed)
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
            }
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

-- Proud Joker
SMODS.Joker {
    key = "proudjoker",
    config = { extra = { mult = 4 } },
    pos = { x = 4, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if SMODS.has_enhancement(context.other_card, 'm_stone') then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}

-- Saving Grace
SMODS.Joker {
    key = "savinggrace",
    config = { extra = { levels = 2, } },
    pos = { x = 5, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.levels } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and G.GAME.current_round.hands_left == 0 then
            SMODS.destroy_cards(card, nil, nil, true)
            return {
                level_up = card.ability.extra.levels,
                message = localize('k_level_up_ex')
            }
        end
    end
}

-- Super Sevens
SMODS.Joker {
    key = "supersevens",
    pos = { x = 6, y = 0 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_hatch_mercury
    end,

    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local sevens = 0
            for _, scored_card in ipairs(context.scoring_hand) do
                if scored_card:get_id() == 7 then
                    sevens = sevens + 1
                    scored_card:set_ability('m_hatch_mercury', nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up()
                            return true
                        end
                    }))
                end
            end
            if sevens > 0 then
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.BLUE
                }
            end
        end
    end
}

-- Seven Sisters
SMODS.Joker {
    key = "sevensisters",
    pos = { x = 7, y = 0 },
    config = { extra = { xmult = 3.5 } },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,

    -- Code by Somethingcom515
    calculate = function(self, card, context)
        if context.joker_main then
            local passed = true
            for k, v in pairs(context.full_hand) do
                if v:get_id() ~= 7 then -- if even one card is NOT 7, its false. ~= is the lua equivalent of !=
                    passed = false      -- the local "passed" variable is set to false
                end
            end
            if passed then
                return { xmult = card.ability.extra.xmult }
            end
        end
    end
}

--[[

k = *key*
v = value

the code above runs a loop for each corresponding key within the table.
everything within a table (whether its cards, blinds, etc) is assigned a key.

everytime the loop runs in the code, [k] is the index within the context (your full hand) while [v] is the card object
itself. think of [k] as a search string and [v] as the card object. your loop is checking each card's ID. if even one of them
ISNT a 7, the code will not run, hence why its set to false

credit to Somethingcom515, Meta and notmario for teaching me!

--]]

-- Diary Entry
SMODS.Joker {
    key = "diaryentry",
    config = { extra = { chips = 50, } },
    pos = { x = 8, y = 0 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,

    calculate = function(self, card, context)
        if context.other_joker and (context.other_joker.config.center.rarity == 1 or context.other_joker.config.center.rarity == "Common") then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}

-- Black Joker (Ownerships) / Code by Somethingcom515 + LilyFelli
local oldweight = G.P_CENTERS.e_negative.get_weight
SMODS.Edition:take_ownership('e_negative', {
    get_weight = function(self)
        local weight = oldweight(self)
        for k, v in pairs(SMODS.find_card('j_hatch_blackjoker')) do
            weight = weight * (20 ^ #SMODS.find_card("j_hatch_blackjoker"))
        end
        return weight
    end
}, true)

--[[

We are taking ownership of the game's negative rate!
The old weight is defined as a GAME variable. We are taking the base weight, then telling "Black Joker"
to apply its increased rate, which is 2.

--]]

-- Black Joker
SMODS.Joker {
    key = "blackjoker",
    config = { extra = { negative_rate = 20 } },
    pos = { x = 9, y = 0 },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        return { vars = { card.ability.extra.negative_rate } }
    end,
}

-- Musketeer
SMODS.Joker {
    key = "musketeer",
    config = { extra = { dollars = 4, type = 'Three of a Kind' } },
    pos = { x = 0, y = 1 },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars, localize(card.ability.extra.type, 'poker_hands') } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                dollars = card.ability.extra.dollars
            }
        end
    end
}


-- Interstice
SMODS.Joker {
    key = "interstice",
    config = { extra = {} },
    pos = { x = 2, y = 1 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    calculate = function(self, card, context)
        if context.selling_self then
            G.GAME.blind.chips = G.GAME.blind.chips / 2
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end
}

-- Loss Leader
SMODS.Joker {
    key = "lossleader",
    config = { extra = { percent = 25 } },
    pos = { x = 5, y = 1 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent } }
    end,

    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.discount_percent = card.ability.extra.percent
                for _, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true
            end
        }))
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.discount_percent = 0
                for _, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true
            end
        }))
    end
}

-- Dakimakura
SMODS.Joker {
    key = "dakimakura",
    config = { extra = {} },
    pos = { x = 7, y = 1 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Flush"]) then
            for i = 1, #context.full_hand do
                local percent = 1.15 - (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
                local target = context.full_hand[i]
                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 0.15,
                    func = function()
                        target:flip()
                        play_sound("card1", percent)
                        target:juice_up(0.3, 0.3)
                        return true
                    end,
                }))
            end
            for i = 1, #context.full_hand do
                local target = context.full_hand[i]
                G.E_MANAGER:add_event(Event({
                    func = function()
                        assert(SMODS.change_base(target, pseudorandom_element(SMODS.Suits, "edit_card_suit").key, nil))
                        return true
                    end,
                }))
            end
            for i = 1, #context.full_hand do
                local percent = 1.15 - (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
                local target = context.full_hand[i]
                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 0.15,
                    func = function()
                        target:flip()
                        play_sound("card1", percent)
                        target:juice_up(0.3, 0.3)
                        return true
                    end,
                }))
            end
        end
    end,
}

-- Risky Revolver
SMODS.Joker {
    key = "riskyrevolver",
    config = { extra = { xmult = 3, odds = 6 } },
    pos = { x = 0, y = 2 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            'j_hatch_riskyrevolver')
        return { vars = { numerator, denominator, card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and SMODS.pseudorandom_probability(card, 'j_hatch_riskyrevolver', 1, card.ability.extra.odds) then
            local destructable_jokers = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] ~= card and not SMODS.is_eternal(G.jokers.cards[i], card) and not G.jokers.cards[i].getting_sliced then
                    destructable_jokers[#destructable_jokers + 1] =
                        G.jokers.cards[i]
                end
            end
            local joker_to_destroy = pseudorandom_element(destructable_jokers, 'j_hatch_riskyrevolver')

            if joker_to_destroy then
                joker_to_destroy.getting_sliced = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        (context.blueprint_card or card):juice_up(0.8, 0.8)
                        joker_to_destroy:start_dissolve({ G.C.RED }, nil, 1.6)
                        return true
                    end
                }))
            end
        else
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end
}

-- Nine Lives
SMODS.Joker {
    key = "ninelives",
    config = { extra = { mult = 9 } },
    pos = { x = 1, y = 3 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round and context.other_card:get_id() == 9 then
            if context.other_card.debuff then
                return {
                    message = localize('k_debuffed'),
                    colour = G.C.RED
                }
            else
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
}

-- Swindler Localisations (Code by LasagnaFelidae and Somethingcom515)

local oldcardsetsellvalue = Card.set_sell_value
function Card:set_sell_value()
    g = oldcardsetsellvalue(self)
    if self.config.center.key == 'j_hatch_swindler' then
        self.sell_cost = -20
    end
    return g
end

-- Swindler
SMODS.Joker {
    key = "swindler",
    config = { extra = { mult = 20, price = 20 } },
    pos = { x = 2, y = 3 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.price } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

-- Snake Eyes
SMODS.Joker {
    key = "snakeeyes",
    config = { extra = { denominator = 2 } },
    pos = { x = 5, y = 3 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    calculate = function(self, card, context)
        if context.mod_probability and not context.blueprint then
            return {
                denominator = 2
            }
        end
    end,
}

-- Staircase
SMODS.Joker {
    key = "staircase",
    config = { extra = { odds = 4 } },
    pos = { x = 8, y = 3 },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_hatch_staircase')
        return { vars = { numerator, denominator } }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
            #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            if ((context.other_card:is_face())) and SMODS.pseudorandom_probability(card, 'j_hatch_staircase', 1, card.ability.extra.odds) then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                return {
                    extra = {
                        message_card = card,
                        func = function() -- This is for timing purposes, everything here runs after the message
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    SMODS.add_card({ set = 'sephirot' })
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end)
                            }))
                        end
                    },
                }
            end
        end
    end
}

-- Wildside
SMODS.Joker {
    key = "wildside",
    config = { extra = { repetitions = 1 } },
    pos = { x = 2, y = 4 },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_wild
        return { vars = {} }
    end,

    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if SMODS.get_enhancements(context.other_card)["m_wild"] == true then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
            end
        end
    end
}

-- Four-Leaf Clover Localisations

local x_same_ref = get_X_same
function get_X_same(num, hand, or_more)
    if next(SMODS.find_card("j_hatch_fourleaf")) and num == 4 then
        num = 3
    end
    return x_same_ref(num, hand, or_more)
end

-- Four-Leaf Clover
SMODS.Joker {
    key = "fourleaf",
    config = { extra = { type = 'Three of a Kind' } },
    pos = { x = 5, y = 4 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',
}

-- Fool's Gold
SMODS.Joker {
    key = "foolsgold",
    config = { extra = { odds = 4 } },
    pos = { x = 9, y = 8 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_hatch_foolsgold')
        return { vars = { numerator, denominator } }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') and
            SMODS.pseudorandom_probability(card, 'j_hatch_foolsgold', 1, card.ability.extra.odds) then
            return {
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card {
                            key = 'c_fool',
                        }
                        G.GAME.consumeable_buffer = 0
                        return true
                    end
                })) }
        end
    end
}

-- Topsy Turvy
SMODS.Joker {
    key = "topsyturvy",
    config = { extra = { odds = 4 } },
    pos = { x = 9, y = 4 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_hatch_topsyturvy')
        return { vars = { numerator, denominator } }
    end,

    calculate = function(self, card, context)
        if context.joker_main and
            SMODS.pseudorandom_probability(card, 'j_hatch_topsyturvy', 1, card.ability.extra.odds) then
            return {
                swap = true,
                message = "Swapped!",
                colour = G.C.PURPLE
            }
        end
    end
}

-- Lime Pie
SMODS.Joker {
    key = "limepie",
    config = { extra = { dollars = 8, discard_sub = 1 } },
    pos = { x = 2, y = 5 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars, card.ability.extra.discard_sub } }
    end,
    calculate = function(self, card, context)
        if
            context.discard
            and not context.blueprint
            and context.other_card == context.full_hand[#context.full_hand]
        then
            local prev_gold = card.ability.extra.dollars
            card.ability.extra.dollars = math.max(0, card.ability.extra.dollars - card.ability.extra.discard_sub)
            if card.ability.extra.dollars ~= prev_gold then
                return {
                    message = "-$1",
                    colour = G.C.YELLOW,
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if card.ability.extra.dollars - card.ability.extra.discard_sub <= 0 then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize("k_eaten_ex"),
                    colour = G.C.RED,
                }
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return card.ability.extra.dollars
    end,
}

-- Empty Crown
SMODS.Joker {
    key = "emptycrown",
    config = { extra = {} },
    pos = { x = 4, y = 5 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and not context.blueprint then
            return {
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card {
                            key = 'c_hatch_kether',
                        }
                        G.GAME.consumeable_buffer = 0
                        return true
                    end
                })) }
        end
    end
}

-- Royal Guard
SMODS.Joker {
    key = "royalguard",
    config = { extra = { mult = 0 } },
    pos = { x = 5, y = 5 },
    cost = 5,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        local face_tally = 0
        if G.playing_cards then
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card:is_face {} then face_tally = face_tally + 1 end
            end
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult + face_tally } }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            local face_tally = 0
            for _, playing_card in ipairs(G.playing_cards) do
                if playing_card:is_face {} then face_tally = face_tally + 1 end
            end
            return {
                mult = card.ability.extra.mult + face_tally
            }
        end
    end
}

-- Meteorite
SMODS.Joker {
    key = "meteorite",
    config = { extra = {} },
    pos = { x = 6, y = 5 },
    cost = 5,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = { key = 'tag_meteor', set = 'Tag' }
        return { vars = { localize { type = 'name_text', set = 'Tag', key = 'tag_meteor' } } }
    end,
    calculate = function(self, card, context)
        if context.selling_self then
            G.E_MANAGER:add_event(Event({
                func = (function()
                    add_tag(Tag('tag_meteor'))
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end)
            }))
            return nil, true -- This is for Joker retrigger purposes
        end
    end,
}

-- Bonus Round
SMODS.Joker {
    key = "bonusround",
    config = { extra = { dollars = 3 } },
    pos = { x = 0, y = 6 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollars } }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_bonus') then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.dollars
            return {
                dollars = card.ability.extra.dollars,
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    }))
                end
            }
        end
    end
}

-- Textile Joker
SMODS.Joker {
    key = "textile",
    config = { extra = { mult = 0, mult_gain = 4 } },
    pos = { x = 3, y = 6 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain } }
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.end_of_round and G.GAME.current_round.hands_played == 1 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.MULT,
            }
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

-- Medicine Cabinet
SMODS.Joker {
    key = "medicine",
    config = { extra = { xmult = 3, odds = 4 } },
    pos = { x = 5, y = 6 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_hatch_medicine')
        return { vars = { numerator, denominator, card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if G.GAME.blind.boss and context.end_of_round and context.main_eval then
            if SMODS.pseudorandom_probability(card, 'j_hatch_medicine', 1, card.ability.extra.odds) then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize('k_extinct_ex')
                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
        if context.joker_main then
            if G.GAME.blind.boss then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end
}

-- Room No. 202
SMODS.Joker {
    key = "room202",
    config = { extra = { h_size = 0, h_mod = 1 } },
    pos = { x = 7, y = 7 },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, localize('Full House', 'poker_hands', card.ability.extra.h_mod) } }
    end,

    calculate = function(self, card, context)
        if context.before and not context.blueprint and (next(context.poker_hands['Flush House']) or next(context.poker_hands['Full House'])) then
            -- See note about SMODS Scaling Manipulation on the wiki
            card.ability.extra.h_size = card.ability.extra.h_size + card.ability.extra.h_mod
            G.hand:change_size(card.ability.extra.h_mod)
            return {
                message = localize('k_upgrade_ex'),
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if context.beat_boss and card.ability.extra.h_size > 1 then
                G.hand:change_size(-card.ability.extra.h_size)
                card.ability.extra.h_size = 0
                return {
                    message = localize('k_reset'),
                }
            end
        end
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-card.ability.extra.h_size)
        card.ability.extra.h_size = 0
    end
}

-- Soured Milk
SMODS.Joker {
    key = "sourmilk",
    config = { extra = { dollar = 1, limit = 20 } },
    pos = { x = 8, y = 6 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dollar, card.ability.extra.limit } }
    end,

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false then
            if G.GAME.dollars <= -20 then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = "Soured!",
                    colour = G.C.FILTER
                }
            else
                return {
                    dollars = -card.ability.extra.dollar
                }
            end
        end
    end
}

-- Milkman
SMODS.Joker {
    key = "milkman",
    config = { extra = { xmult_gain = 0.2 } },
    pos = { x = 9, y = 6 },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult_gain, 1 + (G.GAME.dollars < 0 and card.ability.extra.xmult_gain * -G.GAME.dollars or 0) } }
    end,

    -- Credit to N' + aure_
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = 1 + (G.GAME.dollars < 0 and card.ability.extra.xmult_gain * -G.GAME.dollars or 0)
            }
        end
    end
}

-- Plea Deal
SMODS.Joker({
    key = "pleadeal",
    config = { extra = { d_size = 1, h_size = 1 } },
    pos = { x = 4, y = 7 },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = "HatchetJokers",

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.d_size, card.ability.extra.h_size } }
    end,

    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(G.GAME.round_resets.discards)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-G.GAME.round_resets.discards)
    end,
})

-- Final Ace
SMODS.Joker {
    key = "finalace",
    config = { extra = { mult = 0, mult_mod = 11 } },
    pos = { x = 8, y = 8 },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_mod } }
    end,

    calculate = function(self, card, context)
        if context.destroy_card and not context.blueprint then
            if #context.full_hand == 1 and context.destroy_card == context.full_hand[1] and context.full_hand[1]:get_id() == 14 then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_mod
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.RED,
                    remove = true
                }
            end
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}

-- Cap and Bells
SMODS.Joker({
    key = "capbells",
    config = { extra = { booster = 1 } },
    pos = { x = 3, y = 8 },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = "HatchetJokers",

    add_to_deck = function(self, card, from_debuff)
        SMODS.change_booster_limit(1)
    end,

    remove_from_deck = function(self, card, from_debuff)
        SMODS.change_booster_limit(-1)
    end,
})

-- Prion
SMODS.Joker({
    key = "prion",
    config = { extra = { odds = 4 } },
    pos = { x = 4, y = 8 },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = "HatchetJokers",

    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            'j_hatch_prion')
        return { vars = { numerator, denominator } }
    end,

    calculate = function(self, card, context)
        if context.discard then
            if SMODS.pseudorandom_probability(card, 'j_hatch_prion', 1, card.ability.extra.odds) then
                return {
                    remove = true
                }
            end
        end
    end
})

-- Etz Chaim
SMODS.Joker {
    key = "etzchaim",
    config = { extra = { xmult = 1, xmult_gain = 1 } },
    pos = { x = 0, y = 9 },
    soul_pos = { x = 1, y = 9 },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = false,
    discovered = false,
    atlas = 'HatchetJokers',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_gain } }
    end,

    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint then

            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.xmult } },
            }
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end,
}
