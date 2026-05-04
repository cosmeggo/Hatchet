-- Sulfur 🜍
SMODS.Enhancement {
    key = 'sulfur',
    pos = { x = 0, y = 0 },
    config = { extra = { sulfur = 0 } },
    atlas = 'HatchetEnhancements',
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.sulfur}}
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            card.ability.extra.sulfur = (card.ability.extra.sulfur) + 1
            return {
                message = "Upgrade!",
                extra = {
                    mult = card.ability.extra.sulfur
                }
            }
        end
    end
}

-- Mercury ☿
SMODS.Enhancement {
    key = 'mercury',
    pos = { x = 1, y = 0 },
    config = { extra = { min = 0, max = 75 } },
    atlas = 'HatchetEnhancements',
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                chips = pseudorandom('m_hatch_mercury', card.ability.extra.min, card.ability.extra.max)
            }
        end
    end
}

-- Salt 🜔
SMODS.Enhancement {
    key = 'salt',
    pos = { x = 2, y = 0 },
    config = { extra = { odds = 2, repetitions = 2 } },
    atlas = 'HatchetEnhancements',
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'm_hatch_salt')
        return { vars = { numerator, denominator, card.ability.extra.repetitions } }
    end,

    calculate = function(self, card, context)
        if context.repetition and card.should_retrigger then
            return { repetitions = card.ability.extra.repetitions }
        end
        if context.main_scoring and context.cardarea == G.play then
            card.should_retrigger = false
            if SMODS.pseudorandom_probability(card, 'm_hatch_salt', 1, card.ability.extra.odds, 'm_hatch_salt') then
                card.should_retrigger = true
            card.ability.extra.repetitions = 2
            end
        end
    end
}