-- Da'at
SMODS.Consumable {
    key = 'daat',
    set = 'hatch_divine',
    pos = { x = 0, y = 1 },
    cost = 10,
    unlocked = false,
    discovered = false,
    hidden = true,
    atlas = 'HatchetConsumables',

    use = function(self, card, area, copier)
        G.GAME.daat_summon = 0
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                SMODS.add_card({ key = "j_hatch_etzchaim" })
                card:juice_up(0.3, 0.5)
                return true
            end
        }))
        delay(0.6)
    end,
    can_use = function(self, card)
        return G.jokers and #G.jokers.cards < G.jokers.config.card_limit
    end,
}

-- Soul of Hatchet
SMODS.Consumable {
    key = 'soul_of_hatchet',
    set = 'hatch_divine',
    pos = { x = 1, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_hatchet") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_hatchet" -- The Original Joker
    end
}

-- Soul of Love Letter
SMODS.Consumable {
    key = 'soul_of_loveletter',
    set = 'hatch_divine',
    pos = { x = 2, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_loveletter") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_loveletter" -- The Original Joker
    end
}

-- Soul of Wildside
SMODS.Consumable {
    key = 'soul_of_wildside',
    set = 'hatch_divine',
    pos = { x = 3, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_wildside") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_wildside" -- The Original Joker
    end
}

-- Soul of Steel Ball
SMODS.Consumable {
    key = 'soul_of_ball',
    set = 'hatch_divine',
    pos = { x = 4, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_ball") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_steelball" -- The Original Joker
    end
}

-- Soul of Clover
SMODS.Consumable {
    key = 'soul_of_clover',
    set = 'hatch_divine',
    pos = { x = 5, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_fourleaf") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_hatch_fourleaf" -- The Original Joker
    end
}

-- Soul of Banner
SMODS.Consumable {
    key = 'soul_of_banner',
    set = 'hatch_divine',
    pos = { x = 7, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_banner") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_banner" -- The Original Joker
    end
}

-- Soul of Mime
SMODS.Consumable {
    key = 'soul_of_mime',
    set = 'hatch_divine',
    pos = { x = 8, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_mime") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_mime" -- The Original Joker
    end
}

-- Soul of Fist
SMODS.Consumable {
    key = 'soul_of_fist',
    set = 'hatch_divine',
    pos = { x = 9, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_fist") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_raised_fist" -- The Original Joker
    end
}

-- Soul of Space
SMODS.Consumable {
    key = 'soul_of_space',
    set = 'hatch_divine',
    pos = { x = 0, y = 2 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_space") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_space" -- The Original Joker
    end
}

-- Soul of Trousers
SMODS.Consumable {
    key = 'soul_of_trousers',
    set = 'hatch_divine',
    pos = { x = 6, y = 1 },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'HatchetConsumables',
    
    use = function(self, card, area, copier) -- Sound event
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('hatch_mega')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        for i = 1, #G.jokers.highlighted do -- Flip Animation #1
            local percent = 1.15 - (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    play_sound('card1', percent)
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Set Ability
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local evolution = G.jokers.highlighted[1]
                    evolution:set_ability("j_hatch_divine_trousers") -- The Divine Joker
                    evolution:set_edition("e_hatch_divine", true)
                    card:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.jokers.highlighted do -- Flip Animation #2
            local percent = 0.85 + (i - 0.999) / (#G.jokers.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    G.jokers.highlighted[i]:flip()
                    G.jokers.highlighted[i]:juice_up(0.3, 0.3)
                    return true
                end
            }))
        end
        SMODS.calculate_effect({message = "Evolve!", colour = G.C.SECONDARY_SET.Spectral}, G.jokers.highlighted[1])
        delay(0.5)
    end,
    can_use = function(self, card)
        return G.jokers and G.jokers.highlighted and #G.jokers.highlighted == 1 and
            G.jokers.highlighted[1].config.center.key == "j_trousers" -- The Original Joker
    end
}