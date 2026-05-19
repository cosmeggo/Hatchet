SMODS.Joker{ -- Yababaina
    key = "yababaina",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'HatchetCrossJokers',
    rarity = "nic_teto",
    cost = 4,
    pos = {x = 1, y = 0},
    config = { extra = { suit = "Hearts" } },
    pools = { ["Teto"] = true },

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_hatch_sulfur
        return { vars = { card.ability.extra.suit } }
    end,

    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local hearts = 0
            for _, scored_card in ipairs(context.scoring_hand) do
                if scored_card:is_suit(card.ability.extra.suit) then
                    hearts = hearts + 1
                    scored_card:set_ability('m_hatch_sulfur', nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            scored_card:juice_up()
                            return true
                        end
                    }))
                end
            end
            if hearts > 0 then
                return {
                    message = "Upgrade!",
                    colour = G.C.RED
                }
            end
        end
    end
}