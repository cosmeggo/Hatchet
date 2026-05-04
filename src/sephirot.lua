SMODS.ConsumableType {
    key = 'hatch_sephirot',
    default = 'c_hatch_kether',
    primary_colour = HEX('0ebab2'),
    secondary_colour = HEX('0ebab2'),
    collection_rows = { 5, 6 },
    shop_rate = 0,
    loc_txt = {
        name = "Sephirot",
        collection = "Sephirot Cards",
    }
}

-- Kether
SMODS.Consumable {
    key = 'kether',
    set = 'hatch_sephirot',
    pos = { x = 0, y = 0 },
    config = { extra = { sephirots = 1 } },
    cost = 3,
    atlas = 'HatchetConsumables',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.sephirots } }
    end,

    use = function(self, card, area, copier)
        for i = 1, math.min(card.ability.extra.sephirots, G.consumeables.config.card_limit - #G.consumeables.cards) do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    if G.consumeables.config.card_limit > #G.consumeables.cards then
                        play_sound('timpani')
                        SMODS.add_card({ set = 'hatch_sephirot' })
                        card:juice_up(0.3, 0.5)
                    end
                    return true
                end
            }))
        end
        delay(0.6)
    end,

    can_use = function(self, card)
        return (G.consumeables and #G.consumeables.cards < G.consumeables.config.card_limit) or
            (card.area == G.consumeables)
    end
}

-- Chokmah
SMODS.Consumable {
    key = 'chokmah',
    set = 'hatch_sephirot',
    pos = { x = 1, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_hatch_sulfur' },
    cost = 3,
    atlas = 'HatchetConsumables',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_ability(card.ability.mod_conv)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end
}

-- Binah
SMODS.Consumable {
    key = 'binah',
    set = 'hatch_sephirot',
    pos = { x = 2, y = 0 },
    config = { max_highlighted = 2, mod_conv = 'm_hatch_mercury' },
    cost = 3,
    atlas = 'HatchetConsumables',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_ability(card.ability.mod_conv)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end
}

-- Chesed
SMODS.Consumable {
    key = 'chesed',
    set = 'hatch_sephirot',
    pos = { x = 3, y = 0 },
    config = { max_highlighted = 3 },
    cost = 3,
    atlas = 'HatchetConsumables',

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({ -- Juice Up Animation
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do -- Flip Part #1
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do -- Ability Set
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function() -- im ngl i had to lift this from the regular chesed code so it may be a little janky
                    local cen_pool = {}
                    for _, enhancement_center in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                        if enhancement_center.key ~= 'm_stone' then
                            cen_pool[#cen_pool + 1] = enhancement_center
                        end
                    end
                    local enhancement = pseudorandom_element(cen_pool, 'random_enhance')
                    G.hand.highlighted[i]:set_ability(enhancement)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do -- Flip Part #2
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({ -- Unhighlights All
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end
}

-- Gevurah
SMODS.Consumable {
    key = 'gevurah',
    set = 'hatch_sephirot',
    pos = { x = 4, y = 0 },
    cost = 3,
    atlas = 'HatchetConsumables',

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card({ set = 'Joker', edition = 'e_negative' })
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return G.jokers and #G.jokers.cards
    end
}

-- Tiferet
SMODS.Consumable {
    key = 'tiferet',
    set = 'hatch_sephirot',
    pos = { x = 5, y = 0 },
    config = { max_highlighted = 1 },
    cost = 3,
    atlas = 'HatchetConsumables',

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({ -- Juice Up Animation
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do -- Flip Part #1
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do -- Ability Set (taken from the original mod bc idk what to do LOL)
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    local seal_pool = { 'Gold', 'Red', 'Blue', 'Purple' }
                    local random_seal = pseudorandom_element(seal_pool, 'random_seal')
                    G.hand.highlighted[i]:set_seal(random_seal, nil, true)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do -- Flip Part #2
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({ -- Unhighlights All
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end
}

-- Netzach
SMODS.Consumable {
    key = 'netzach',
    set = 'hatch_sephirot',
    pos = { x = 6, y = 0 },
    config = { extra = { spectrals = 1 } },
    cost = 3,
    atlas = 'HatchetConsumables',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.spectrals } }
    end,

    use = function(self, card, area, copier)
        for i = 1, math.min(card.ability.extra.spectrals, G.consumeables.config.card_limit - #G.consumeables.cards) do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    if G.consumeables.config.card_limit > #G.consumeables.cards then
                        play_sound('timpani')
                        SMODS.add_card({ set = 'Spectral' })
                        card:juice_up(0.3, 0.5)
                    end
                    return true
                end
            }))
        end
        delay(0.6)
    end,

    can_use = function(self, card)
        return (G.consumeables and #G.consumeables.cards < G.consumeables.config.card_limit) or
            (card.area == G.consumeables)
    end
}

-- Hod
SMODS.Consumable {
    key = 'hod',
    set = 'hatch_sephirot',
    pos = { x = 7, y = 0 },
    config = { extra = { max_highlighted = 2 } },
    cost = 3,
    atlas = 'HatchetConsumables',

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.max_highlighted } }
    end,

    use = function(self, card, area, copier) -- Select
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do -- Flip #1
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
            delay(0.2)
            for i = 1, #G.hand.highlighted do
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        assert(SMODS.modify_rank(G.hand.highlighted[i], -1))
                        return true
                    end
                }))
            end
        for i = 1, #G.hand.highlighted do -- Flip #2
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({ -- Deselect
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
        delay(0.5)
    end,

    can_use = function(self, card) -- Can Use
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.extra.max_highlighted
    end
}

-- Yesod
SMODS.Consumable {
    key = 'yesod',
    set = 'hatch_sephirot',
    pos = { x = 8, y = 0 },
    config = { max_highlighted = 1, mod_conv = 'm_hatch_salt' },
    cost = 3,
    atlas = 'HatchetConsumables',

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted, localize { type = 'name_text', set = 'Enhanced', key = card.ability.mod_conv } } }
    end,

    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_ability(card.ability.mod_conv)
                    return true
                end
            }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.hand.highlighted[i]:flip()
                    play_sound('tarot2', percent, 0.6)
                    G.hand.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.hand and #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.max_highlighted
    end
}

-- Malkuth has no use in this mod so it has been left out.